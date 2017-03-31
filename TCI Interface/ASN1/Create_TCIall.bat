REM This batch file will create a single ASN1 file from all ASN1 files in the TCI project folder and 1609dot3 subfolder. 
REM
REM To run: check out all ASN.1 files. Run this batch file. The new file "TCIall.asn" will be created by merging all other TCI files.

(
echo.  
echo -- ======================================================================
echo. 
)>"separator.txt"

copy /Y TCIDispatcher.asn + separator.txt + TCI29451.asn + separator.txt + TCI16093.asn + separator.txt + TCI16092.asn + separator.txt + TCI16094.asn + separator.txt + TCI80211.asn + separator.txt + TCISutControl.asn + separator.txt + TCIresponseInfo.asn + separator.txt + TCIindication.asn + separator.txt + TCIip.asn + separator.txt + TCIwsm.asn + separator.txt + TCIEventHandling.asn + separator.txt + TCICommonTypes.asn + separator.txt + "1609dot3\17419_CITSapplMgmtIDs_v1.asn" + separator.txt + "1609dot3\wee.asn" + separator.txt + "1609dot3\wsa.asn" /A TCIall.asn /B

del separator.txt

