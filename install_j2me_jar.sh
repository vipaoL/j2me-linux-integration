EMULATOR_DIR=~/freej2me
SYSTEM_APPLICATIONS_DIR=~/.local/share/applications
APPS_DIR=$EMULATOR_DIR/apps
TMP_WORKDIR=/tmp/j2me-installer
JAR_NAME=`basename $1`

mkdir $APPS_DIR

rm -rf $TMP_WORKDIR
mkdir $TMP_WORKDIR
cd $TMP_WORKDIR
cp $1 .
unzip $JAR_NAME  -d extracted
MIDLET=`grep '^MIDlet-1:' -w extracted/META-INF/MANIFEST.MF | cut -d ':' -f 2 | tr -d '[:space:]'`
echo $MIDLET
APP_NAME=`echo $MIDLET | cut -d ',' -f 1`
ICON_PATH=`echo $MIDLET | cut -d ',' -f 2 | sed "s#^\/*##g"`
echo $APP_NAME
echo $ICON_PATH
cp $1 ${APPS_DIR}/$APP_NAME.jar
cp extracted/$ICON_PATH -d $APPS_DIR/$APP_NAME.png

cat $EMULATOR_DIR/template.desktop | sed "s#replace_with_home#$HOME#g" | sed "s#replace_with_app_name#$APP_NAME#g" > ${SYSTEM_APPLICATIONS_DIR}/${APP_NAME}_J2ME.desktop

rm -rf $TMP_WORKDIR
sleep 1
