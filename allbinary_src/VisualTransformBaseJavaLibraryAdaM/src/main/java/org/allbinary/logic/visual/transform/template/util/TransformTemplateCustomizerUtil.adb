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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package CustomizerTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;
   package BodyData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
   package TitleData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out TransformTemplateCustomizerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   function getInstance return TransformTemplateCustomizerUtil_Access is
   begin
        return TransformTemplateCustomizerUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformTemplateCustomizerUtil'Class) is
      commonStrings : CommonStrings_Access;
      SPACE : Unbounded_String;
   begin
      Initialize_Fields (This);
        commonStrings := CommonStrings_Package.getInstance;
        SPACE := CommonSeps_Package.getInstance.SPACE;
        This.CUSTOMIZER_NAME := SPACE & Java_Image (CustomizerTransformInfoData_Package.NAME);
        This.BODY_VIEWNAMEKEY := SPACE & Java_Image (BodyData_Package.getInstance.VIEWNAMEKEY);
        This.TITLE_VIEWNAMEKEY := SPACE & Java_Image (TitleData_Package.getInstance.VIEWNAMEKEY);
        This.GLOBALS_NEW := Java_Image (GLOBALS2_Package.NEW_Id) & SPACE;
        This.GLOBALS_INSERT := Java_Image (commonStrings.INSERT) & SPACE;
        This.GLOBALS_DELETE := Java_Image (commonStrings.DELETE) & SPACE;
        This.GLOBALS_EDIT := Java_Image (GLOBALS2_Package.EDIT) & SPACE;
        This.GLOBALS_UPDATE := Java_Image (commonStrings.UPDATE) & SPACE;
   end Initialize;

   function Create return TransformTemplateCustomizerUtil_Access is
      This : constant TransformTemplateCustomizerUtil_Access := new TransformTemplateCustomizerUtil;
   begin
      TransformTemplateCustomizerUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getPageNameHack (This : in out TransformTemplateCustomizerUtil; viewName : Unbounded_String; storeName : Unbounded_String) return Unbounded_String is
      SPACE : Unbounded_String;
      ONE_EMPTY_STRING_ARRAY : Unbounded_String_Array_Access;
      hashMap : HashMap_Access;
      replace : Replace_Access;
      rootViewName : Unbounded_String;
   begin
        SPACE := CommonSeps_Package.getInstance.SPACE;
        ONE_EMPTY_STRING_ARRAY := StringUtil_Package.getInstance.ONE_EMPTY_STRING_ARRAY;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (new Unbounded_String_Array'(0 => viewName & SPACE), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => storeName & SPACE), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => This.CUSTOMIZER_NAME), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => This.BODY_VIEWNAMEKEY), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => This.TITLE_VIEWNAMEKEY), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => This.GLOBALS_NEW), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => This.GLOBALS_INSERT), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => This.GLOBALS_DELETE), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => This.GLOBALS_EDIT), ONE_EMPTY_STRING_ARRAY);
        hashMap.put (new Unbounded_String_Array'(0 => This.GLOBALS_UPDATE), ONE_EMPTY_STRING_ARRAY);
        replace := null;
        rootViewName := replace.all_Id (viewName);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("RootViewName for ObjectConfig: ") & rootViewName, TransformTemplateCustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getPageNameHack"));
        end if;
        return rootViewName;
   end getPageNameHack;

   procedure getPageNameHack (This : in out TransformTemplateCustomizerUtil; viewName : Unbounded_String; storeName : Unbounded_String) is
      Java_Result : constant Unbounded_String := TransformTemplateCustomizerUtil'Class (This).getPageNameHack (viewName, storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPageNameHack;

begin
   null;
   instance := TransformTemplateCustomizerUtil_Package.Create;

end org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;


