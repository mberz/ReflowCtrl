
# Set what option should compile into the OKPrompt

# set builddate
BUILD_DATE = $(shell date)
BUILD_DATE_SHORT = $(shell date "+%Y-%m-%d")

DASH_VARS = \
	-DBUILD_DATE="\"$(BUILD_DATE)\"" -DBUILD_DATE_SHORT="\"$(BUILD_DATE_SHORT)\""
	