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


package body org.allbinary.logic.java.FileExtensionData_Package is

   procedure Initialize_Fields (This : in out FileExtensionData'Class) is
   begin
      null;
      This.DOT_JAVA_SOURCE := To_Unbounded_String (".java");
      This.JAVA_SOURCE := To_Unbounded_String ("java");
   end Initialize_Fields;


   function getInstance return FileExtensionData_Access is
   begin
        return FileExtensionData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FileExtensionData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FileExtensionData_Access is
      This : constant FileExtensionData_Access := new FileExtensionData;
   begin
      FileExtensionData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := FileExtensionData_Package.Create;

end org.allbinary.logic.java.FileExtensionData_Package;


