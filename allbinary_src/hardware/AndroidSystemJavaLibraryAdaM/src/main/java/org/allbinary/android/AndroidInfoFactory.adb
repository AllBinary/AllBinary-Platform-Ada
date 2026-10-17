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


package body org.allbinary.android.AndroidInfoFactory_Package is

   procedure Initialize_Fields (This : in out AndroidInfoFactory'Class) is
   begin
      null;
      This.version := Integer'Value (To_String (Build_Package.VERSION.SDK));
   end Initialize_Fields;

   procedure Initialize (This : in out AndroidInfoFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AndroidInfoFactory_Access is
      This : constant AndroidInfoFactory_Access := new AndroidInfoFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AndroidInfoFactory_Access is
   begin
        return AndroidInfoFactory_Package.instance;
   end getInstance;

   function getVersion (This : in out AndroidInfoFactory) return Integer is
   begin
        return This.version;
   end getVersion;

   procedure getInstance is
      Java_Result : constant AndroidInfoFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getVersion (This : in out AndroidInfoFactory) is
      Java_Result : constant Integer := AndroidInfoFactory'Class (This).getVersion;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVersion;

begin
   null;
   instance := AndroidInfoFactory_Package.Create;

end org.allbinary.android.AndroidInfoFactory_Package;


