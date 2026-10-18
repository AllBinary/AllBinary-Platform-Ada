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



package body org.allbinary.logic.visual.transform.info.TransformInfoData_Package is

   procedure Initialize_Fields (This : in out TransformInfoData'Class) is
   begin
      null;
      This.PARENT := To_Unbounded_String ("TRANSFORM_INFO_PARENT");
      This.MAPPED := To_Unbounded_String ("TRANSFORM_INFO_MAPPED");
      This.NAME := To_Unbounded_String ("TRANSFORM_INFO_NAME");
      This.DESCRIPTION := To_Unbounded_String ("TRANSFORM_INFO_DESCRIPTION");
      This.CATEGORY := To_Unbounded_String ("TRANSFORM_INFO_CATEGORY");
      This.OBJECTFILENAME := To_Unbounded_String ("TRANSFORM_INFO_OBJECTFILENAME");
      This.OBJECT := To_Unbounded_String ("TRANSFORM_INFO_OBJECT");
      This.OBJECTCONFIGFILENAME := To_Unbounded_String ("TRANSFORM_INFO_OBJECTCONFIGFILENAME");
      This.OBJECTCONFIG := To_Unbounded_String ("TRANSFORM_INFO_OBJECTCONFIG");
      This.TEMPLATEFILENAME := To_Unbounded_String ("TRANSFORM_INFO_TEMPLATEFILENAME");
      This.TEMPLATE := To_Unbounded_String ("TRANSFORM_INFO_TEMPLATE");
      This.DATAFILENAME := To_Unbounded_String ("TRANSFORM_INFO_DATAFILENAME");
      This.DATA := To_Unbounded_String ("TRANSFORM_INFO_DATA");
      This.LABEL := To_Unbounded_String ("TRANSFORM_INFO_LABEL");
      This.OWNER := To_Unbounded_String ("OWNER_") & This.NAME;
      This.PARTIAL := To_Unbounded_String ("PARTIAL_") & This.NAME;
   end Initialize_Fields;


   function getInstance return TransformInfoData_Access is
   begin
        return TransformInfoData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoData_Access is
      This : constant TransformInfoData_Access := new TransformInfoData;
   begin
      TransformInfoData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TransformInfoData_Package.Create;

end org.allbinary.logic.visual.transform.info.TransformInfoData_Package;


