#!/usr/bin/perl

## preheat -- bereit machen
print `./cli/target/reflowctrl -p 50`;
while(parseout_from_ctrl_block(`./cli/target/reflowctrl`)->{'temp'} < 50){
	
	sleep(1);
}

## Heat slowly to 100  hold and continue
for($i = 50; $i<=100; $i++){
	print `./cli/target/reflowctrl -t $i`;
	sleep(2);	
}
# warten ob erreicht:
while(parseout_from_ctrl_block(`./cli/target/reflowctrl`)->{'reached'} eq 'No'){	
	sleep(10);
}

#wait 10 sec
sleep(10);

## Heat (burn) to 180 and end 
print `./cli/target/reflowctrl -t 180`;
sleep(4);
while(parseout_from_ctrl_block(`./cli/target/reflowctrl`)->{'temp'} < 180){	
	sleep(2);
}

print "******************\n";
print "OPEN THE DOOR!\n";
print "******************\n";

exit;
# -------------------------

## function read out
sub parseout_from_tail_line {
	my $line = shift;
	my %result;
	chomp($line);
	if($line =~ /^\s+/){
		my @parts = split(/\s+/, $line);
		
		$result{'temp'} = $parts[1];
		$result{'reached'} = $parts[5];
	}
	return \%result;
}

sub parseout_from_ctrl_block {
	my $block = shift;
	my %result;
	my @lines = split(/\n/, $block);
	
	my $templine = $lines[0];
	my @partstemp = split(/\s+/, $templine);
	$result{'temp'} = $partstemp[1];
	$result{'temp'} =~ s/\.[0-9]{2}\°//g;
	
	my $lockline = $lines[3];
	my @partslock = split(/\s+/, $lockline);
	$result{'lock'} = $partslock[3];

	my $reachedline = $lines[7];
	my @partsreached = split(/\s+/, $reachedline);
	$result{'reached'} = $partsreached[3];	
	
	return \%result;	
}