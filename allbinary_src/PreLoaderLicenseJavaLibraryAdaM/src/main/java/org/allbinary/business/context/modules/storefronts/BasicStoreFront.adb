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
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out BasicStoreFront'Class; storeHashMap : HashMap_Access) is
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

   function Create (storeHashMap : HashMap_Access) return BasicStoreFront_Access is
      This : constant BasicStoreFront_Access := new BasicStoreFront;
   begin
      Initialize (This.all, storeHashMap);
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
            when e : others =>
            Java_Throw (e);
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

   procedure getTestHtmlPath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestHtmlPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestHtmlPath;

   procedure getCurrentHostName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getCurrentHostName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentHostName;

   procedure getCurrentHostNamePath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getCurrentHostNamePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentHostNamePath;

   procedure getCurrentHomeHostName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getCurrentHomeHostName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentHomeHostName;

   procedure getCurrentHomeHostNamePath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getCurrentHomeHostNamePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentHomeHostNamePath;

   procedure getName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getUserName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getUserName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserName;

   procedure getBasketName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getBasketName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasketName;

   procedure getHomeHostName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getHomeHostName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHomeHostName;

   procedure getHomeHostNamePath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getHomeHostNamePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHomeHostNamePath;

   procedure getHostName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getHostName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHostName;

   procedure getHostNamePath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getHostNamePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHostNamePath;

   procedure getTestHomeHostName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestHomeHostName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestHomeHostName;

   procedure getTestHomeHostNamePath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestHomeHostNamePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestHomeHostNamePath;

   procedure getTestHostName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestHostName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestHostName;

   procedure getTestHostNamePath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestHostNamePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestHostNamePath;

   procedure getStaticPath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getStaticPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStaticPath;

   procedure getCategoryPath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getCategoryPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCategoryPath;

   procedure getInventoryControl (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getInventoryControl;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInventoryControl;

   procedure getSubStores (This : in out BasicStoreFront) is
      Java_Result : constant BasicArrayList_Access := BasicStoreFront'Class (This).getSubStores;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSubStores;

   procedure getTagLocation (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTagLocation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTagLocation;

   procedure getPackageLocation (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getPackageLocation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPackageLocation;

   procedure getFtp (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getFtp;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFtp;

   procedure getFtpUserName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getFtpUserName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFtpUserName;

   procedure getFtpPassword (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getFtpPassword;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFtpPassword;

   procedure getTestFtp (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestFtp;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestFtp;

   procedure getTestFtpUserName (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestFtpUserName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestFtpUserName;

   procedure getTestFtpPassword (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestFtpPassword;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestFtpPassword;

   procedure getFtpPath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getFtpPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFtpPath;

   procedure getTestFtpPath (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTestFtpPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestFtpPath;

   procedure getTimeCreated (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getTimeCreated;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTimeCreated;

   procedure getLastModified (This : in out BasicStoreFront) is
      Java_Result : constant Unbounded_String := BasicStoreFront'Class (This).getLastModified;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastModified;

end org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package;


