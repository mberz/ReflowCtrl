    use Device::USB;

    my $usb = Device::USB->new();
    my $dev = $usb->find_device( $VENDOR, $PRODUCT );

    printf "Device: %04X:%04X\n", $dev->idVendor(), $dev->idProduct();
    $dev->open();
    print "Manufactured by ", $dev->manufacturer(), "\n",
          " Product: ", $dev->product(), "\n";

#    $dev->set_configuration( $CFG );
#    $dev->control_msg( @params );



