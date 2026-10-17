--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package is

   procedure Initialize_Fields (This : in out BasicStoreFront'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicStoreFront'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicStoreFront_Access is
      This : constant BasicStoreFront_Access := new BasicStoreFront;
   begin
      BasicStoreFront_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out BasicStoreFront'Class; storeHashMap_Param : access HashMap'Class) is
      storeHashMap : HashMap_Access := HashMap_Access (storeHashMap_Param);
      storeFrontData : StoreFrontData_Access;
   begin
      Initialize_Fields (This);
        storeFrontData := StoreFrontData_Package.getInstance;
        This.name := Unbounded_String (storeHashMap.get (storeFrontData.NAME));
        This.userName := Unbounded_String (storeHashMap.get (UserData_Package.USERNAME));
        This.basketName := Unbounded_String (storeHashMap.get (storeFrontData.NAME));
        This.homeHostName := Unbounded_String (storeHashMap.get (storeFrontData.HOMEHOSTNAME));
        This.homeHostNamePath := Unbounded_String (storeHashMap.get (storeFrontData.HOMEHOSTNAMEPATH));
        This.hostName := Unbounded_String (storeHashMap.get (storeFrontData.HOSTNAME));
        This.hostNamePath := Unbounded_String (storeHashMap.get (storeFrontData.HOSTNAMEPATH));
        This.testHomeHostName := Unbounded_String (storeHashMap.get (storeFrontData.TESTHOMEHOSTNAME));
        This.testHomeHostNamePath := Unbounded_String (storeHashMap.get (storeFrontData.TESTHOMEHOSTNAMEPATH));
        This.testHostName := Unbounded_String (storeHashMap.get (storeFrontData.TESTHOSTNAME));
        This.testHostNamePath := Unbounded_String (storeHashMap.get (storeFrontData.TESTHOSTNAMEPATH));
        This.imagePath := Unbounded_String (storeHashMap.get (storeFrontData.IMAGEPATH));
        This.staticPath := Unbounded_String (storeHashMap.get (storeFrontData.STATICPATH));
        This.categoryPath := Unbounded_String (storeHashMap.get (storeFrontData.CATEGORYPATH));
        This.inventoryControl := Unbounded_String (storeHashMap.get (storeFrontData.INVENTORYCONTROL));
        This.subStores := Unbounded_String (storeHashMap.get (storeFrontData.SUBSTORES));
        This.tagLocation := Unbounded_String (storeHashMap.get (storeFrontData.TAGLOCATION));
        This.packageLocation := Unbounded_String (storeHashMap.get (storeFrontData.PACKAGELOCATION));
        This.ftp := Unbounded_String (storeHashMap.get (storeFrontData.FTP));
        This.ftpPath := Unbounded_String (storeHashMap.get (storeFrontData.FTPPATH));
        This.ftpUserName := Unbounded_String (storeHashMap.get (storeFrontData.FTPUSERNAME));
        This.ftpPassword := Unbounded_String (storeHashMap.get (storeFrontData.FTPPASSWORD));
        This.testFtp := Unbounded_String (storeHashMap.get (storeFrontData.TESTFTP));
        This.testFtpPath := Unbounded_String (storeHashMap.get (storeFrontData.TESTFTPPATH));
        This.testFtpUserName := Unbounded_String (storeHashMap.get (storeFrontData.TESTFTPUSERNAME));
        This.testFtpPassword := Unbounded_String (storeHashMap.get (storeFrontData.TESTFTPPASSWORD));
        This.timeCreated := Unbounded_String (storeHashMap.get (EntryData_Package.getInstance.TIMECREATED));
        This.lastModified := Unbounded_String (storeHashMap.get (EntryData_Package.getInstance.LASTMODIFIED));
   end Initialize;

   function Create (storeHashMap_Param : access HashMap'Class) return BasicStoreFront_Access is
      This : constant BasicStoreFront_Access := new BasicStoreFront;
   begin
      BasicStoreFront_Package.Initialize (This.all, storeHashMap_Param);
      return This;
   end Create;

   function getTestHtmlPath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return (org_Package.allbinary.globals.URLGLOBALS.getTestHtmlPath) + (This.getCurrentHostNamePath);
   end getTestHtmlPath;

   function getCurrentHostName (This : in out BasicStoreFront) return Unbounded_String is
      location : Unbounded_String;
   begin
        location := Null_Unbounded_String;
        if org_Package.allbinary.globals.URLGLOBALS.isTestingMode then
            location := This.getTestHostName;
        else
            location := This.getHostName;
        end if;
        return location;
   end getCurrentHostName;

   function getCurrentHostNamePath (This : in out BasicStoreFront) return Unbounded_String is
      location : Unbounded_String;
   begin
        location := Null_Unbounded_String;
        if org_Package.allbinary.globals.URLGLOBALS.isTestingMode then
            location := This.getTestHostNamePath;
        else
            location := This.getHostNamePath;
        end if;
        return location;
   end getCurrentHostNamePath;

   function getCurrentHomeHostName (This : in out BasicStoreFront) return Unbounded_String is
      location : Unbounded_String;
   begin
        location := Null_Unbounded_String;
        if org_Package.allbinary.globals.URLGLOBALS.isTestingMode then
            location := This.getTestHomeHostName;
        else
            location := This.getHomeHostName;
        end if;
        return location;
   end getCurrentHomeHostName;

   function getCurrentHomeHostNamePath (This : in out BasicStoreFront) return Unbounded_String is
      location : Unbounded_String;
   begin
        location := Null_Unbounded_String;
        if org_Package.allbinary.globals.URLGLOBALS.isTestingMode then
            location := This.getTestHomeHostNamePath;
        else
            location := This.getHomeHostNamePath;
        end if;
        return location;
   end getCurrentHomeHostNamePath;

   function getName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getUserName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.userName;
   end getUserName;

   function getBasketName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.basketName;
   end getBasketName;

   function getHomeHostName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.homeHostName;
   end getHomeHostName;

   function getHomeHostNamePath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.homeHostNamePath;
   end getHomeHostNamePath;

   function getHostName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.hostName;
   end getHostName;

   function getHostNamePath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.hostNamePath;
   end getHostNamePath;

   function getTestHomeHostName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.testHomeHostName;
   end getTestHomeHostName;

   function getTestHomeHostNamePath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.testHomeHostNamePath;
   end getTestHomeHostNamePath;

   function getTestHostName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.testHostName;
   end getTestHostName;

   function getTestHostNamePath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.testHostNamePath;
   end getTestHostNamePath;

   function getStaticPath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.staticPath;
   end getStaticPath;

   function getCategoryPath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.categoryPath;
   end getCategoryPath;

   function getInventoryControl (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.inventoryControl;
   end getInventoryControl;

   --  throws Exception
   function getSubStores (This : in out BasicStoreFront) return BasicArrayList_Access is
      tokenizer : Tokenizer_Access;
      subStoreVector : BasicArrayList_Access;
   begin
        begin
            tokenizer := Tokenizer_Package.Create (CommonSeps_Package.getInstance.SEMICOLON);
            subStoreVector := tokenizer.getTokensFromString (This.subStores, BasicArrayListD_Package.Create);
            return subStoreVector;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getSubStores;

   function getTagLocation (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.tagLocation;
   end getTagLocation;

   function getPackageLocation (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.packageLocation;
   end getPackageLocation;

   function getFtp (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.ftp;
   end getFtp;

   function getFtpUserName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.ftpUserName;
   end getFtpUserName;

   function getFtpPassword (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.ftpPassword;
   end getFtpPassword;

   function getTestFtp (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.testFtp;
   end getTestFtp;

   function getTestFtpUserName (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.testFtpUserName;
   end getTestFtpUserName;

   function getTestFtpPassword (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.testFtpPassword;
   end getTestFtpPassword;

   function getFtpPath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.ftpPath;
   end getFtpPath;

   function getTestFtpPath (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.testFtpPath;
   end getTestFtpPath;

   function getTimeCreated (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.timeCreated;
   end getTimeCreated;

   function getLastModified (This : in out BasicStoreFront) return Unbounded_String is
   begin
        return This.lastModified;
   end getLastModified;

end org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package;


