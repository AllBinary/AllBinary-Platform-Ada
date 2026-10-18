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



package body org.allbinary.business.context.modules.storefront.StoreFrontData_Package is

   procedure Initialize_Fields (This : in out StoreFrontData'Class) is
   begin
      null;
      This.CANCEL := To_Unbounded_String ("Cancel Store Front");
      This.SELECT_Id := To_Unbounded_String ("Select Store Front");
      This.INSTALL := To_Unbounded_String ("Install Store Front");
      This.INSTALL_COMPLETE := To_Unbounded_String ("Install Store Front Complete");
      This.NAME := To_Unbounded_String ("STOREFRONT_NAME");
      This.CURRENTHOSTNAME := To_Unbounded_String ("STOREFRONT_CURRENTHOSTNAME");
      This.CURRENTHOSTNAMEPATH := To_Unbounded_String ("STOREFRONT_CURRENTHOSTNAMEPATH");
      This.CURRENTHOMEHOSTNAME := To_Unbounded_String ("STOREFRONT_CURRENTHOMEHOSTNAME");
      This.CURRENTHOMEHOSTNAMEPATH := To_Unbounded_String ("STOREFRONT_CURRENTHOMEHOSTNAMEPATH");
      This.HOMEHOSTNAME := To_Unbounded_String ("STOREFRONT_HOMEHOSTNAME");
      This.HOMEHOSTNAMEPATH := To_Unbounded_String ("STOREFRONT_HOMEHOSTNAMEPATH");
      This.HOSTNAME := To_Unbounded_String ("STOREFRONT_HOSTNAME");
      This.HOSTNAMEPATH := To_Unbounded_String ("STOREFRONT_HOSTNAMEPATH");
      This.TESTHOMEHOSTNAME := To_Unbounded_String ("STOREFRONT_TESTHOMEHOSTNAME");
      This.TESTHOMEHOSTNAMEPATH := To_Unbounded_String ("STOREFRONT_TESTHOMEHOSTNAMEPATH");
      This.TESTHOSTNAME := To_Unbounded_String ("STOREFRONT_TESTHOSTNAME");
      This.TESTHOSTNAMEPATH := To_Unbounded_String ("STOREFRONT_TESTHOSTNAMEPATH");
      This.IMAGEPATH := To_Unbounded_String ("STOREFRONT_IMAGEPATH");
      This.STATICPATH := To_Unbounded_String ("STOREFRONT_STATICPATH");
      This.CATEGORYPATH := To_Unbounded_String ("STOREFRONT_CATEGORYPATH");
      This.INVENTORYCONTROL := To_Unbounded_String ("STOREFRONT_INVENTORYCONTROL");
      This.CONFIGURATION := To_Unbounded_String ("STOREFRONT_CONFIGURATION");
      This.SUBSTORES := To_Unbounded_String ("STOREFRONT_SUBSTORES");
      This.TAGLOCATION := To_Unbounded_String ("STOREFRONT_TAGLOCATION");
      This.PACKAGELOCATION := To_Unbounded_String ("STOREFRONT_PACKAGELOCATION");
      This.FTP := To_Unbounded_String ("STOREFRONT_FTP");
      This.FTPPATH := To_Unbounded_String ("STOREFRONT_FTPPATH");
      This.FTPUSERNAME := To_Unbounded_String ("STOREFRONT_FTPUSERNAME");
      This.FTPPASSWORD := To_Unbounded_String ("STOREFRONT_FTPPASSWORD");
      This.TESTFTP := To_Unbounded_String ("STOREFRONT_TESTFTP");
      This.TESTFTPPATH := To_Unbounded_String ("STOREFRONT_TESTFTPPATH");
      This.TESTFTPUSERNAME := To_Unbounded_String ("STOREFRONT_TESTFTPUSERNAME");
      This.TESTFTPPASSWORD := To_Unbounded_String ("STOREFRONT_TESTFTPPASSWORD");
      This.SELECTSTORENAME := To_Unbounded_String ("STOREFRONT_SELECTSTORENAME");
   end Initialize_Fields;

   procedure Initialize (This : in out StoreFrontData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return StoreFrontData_Access is
      This : constant StoreFrontData_Access := new StoreFrontData;
   begin
      StoreFrontData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return StoreFrontData_Access is
   begin
        return StoreFrontData_Package.instance;
   end getInstance;

begin
   null;
   instance := StoreFrontData_Package.Create;

end org.allbinary.business.context.modules.storefront.StoreFrontData_Package;


