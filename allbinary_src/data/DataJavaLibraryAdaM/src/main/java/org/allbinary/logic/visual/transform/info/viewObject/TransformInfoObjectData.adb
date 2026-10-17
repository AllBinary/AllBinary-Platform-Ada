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


package body org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package is

   procedure Initialize_Fields (This : in out TransformInfoObjectData'Class) is
   begin
      null;
      This.UNCRYPTED_EXTENSION := To_Unbounded_String ("class");
      This.ENCRYPTED_EXTENSION := To_Unbounded_String ("abw");
   end Initialize_Fields;


   function getInstance return TransformInfoObjectData_Access is
   begin
        return TransformInfoObjectData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoObjectData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoObjectData_Access is
      This : constant TransformInfoObjectData_Access := new TransformInfoObjectData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant TransformInfoObjectData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoObjectData_Package.Create;

end org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package;


