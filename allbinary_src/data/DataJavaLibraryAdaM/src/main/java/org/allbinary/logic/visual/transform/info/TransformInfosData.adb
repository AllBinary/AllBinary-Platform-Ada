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


package body org.allbinary.logic.visual.transform.info.TransformInfosData_Package is

   procedure Initialize_Fields (This : in out TransformInfosData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("TRANSFORM_INFOS_NAME");
      This.GROUP := To_Unbounded_String ("TRANSFORM_INFOS_GROUP");
      This.ALL_Id := To_Unbounded_String ("TRANSFORM_INFOS_ALL");
      This.PREVIEW := To_Unbounded_String ("TRANSFORM_INFOS_PREVIEW");
      This.SMALL_PREVIEW := To_Unbounded_String ("TRANSFORM_INFOS_SMALL_PREVIEW");
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfosData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfosData_Access is
      This : constant TransformInfosData_Access := new TransformInfosData;
   begin
      TransformInfosData_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return TransformInfosData_Access is
   begin
        return TransformInfosData_Package.instance;
   end getInstance;

begin
   null;
   instance := TransformInfosData_Package.Create;

end org.allbinary.logic.visual.transform.info.TransformInfosData_Package;


