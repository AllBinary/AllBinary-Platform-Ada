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


package body org.allbinary.business.init.db.InitDbHelperFactory_Package is

   procedure Initialize_Fields (This : in out InitDbHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InitDbHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InitDbHelperFactory_Access is
      This : constant InitDbHelperFactory_Access := new InitDbHelperFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (abeClientInformation : AbeClientInformationInterface_Access; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) return Java_Object_Access is
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      anyType : Java_Object_Access;
   begin
        params := new Java_Object_Access_Array'(0 .. (1) - 1 => null);
        classes := new Ada_Tags_Tag_Array'(0 .. (1) - 1 => null);
        classes (0) := DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Tag;
        params (0) := Java_Object_Access (databaseConnectionInfoInterface);
        anyType := AbeFactory_Package.getInstance.getInstance (abeClientInformation, CLASSNAME, classes, params);
        return anyType;
   end getInstance;

   --  throws LicensingException
   function getInstance (abeClientInformation : AbeClientInformationInterface_Access) return Java_Object_Access is
      anyType : Java_Object_Access;
   begin
        anyType := AbeFactory_Package.getInstance.getInstance (abeClientInformation, CLASSNAME, null, null);
        return anyType;
   end getInstance;

   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) is
      Java_Result : constant Java_Object_Access := getInstance (abeClientInformation, databaseConnectionInfoInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access) is
      Java_Result : constant Java_Object_Access := getInstance (abeClientInformation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("org.allbinary.business.installer.InitDbCrypted");

end org.allbinary.business.init.db.InitDbHelperFactory_Package;


