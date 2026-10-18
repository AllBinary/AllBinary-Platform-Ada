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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package body org.allbinary.string_Id.CommonLabels_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   procedure Initialize_Fields (This : in out CommonLabels'Class) is
   begin
      null;
      This.WIDTH_LABEL := To_Unbounded_String (" Width: ");
      This.HEIGHT_LABEL := To_Unbounded_String (" Height: ");
      This.END_LABEL := To_Unbounded_String ("End: ");
      This.TOTAL_LABEL := To_Unbounded_String ("Total: ");
      This.INDEX_LABEL := To_Unbounded_String ("index: ");
      This.START_LABEL := To_Unbounded_String ("Start: ");
      This.COMMAND_LABEL := To_Unbounded_String ("Command: ");
      This.NAME_LABEL := To_Unbounded_String ("Name: ");
      This.START := This.START_LABEL;
      This.ELAPSED := To_Unbounded_String (" Elapsed: ");
      This.CURRENT := To_Unbounded_String (" Current: ");
      This.NEXT := To_Unbounded_String ("Next");
      This.ITEM_LABEL := To_Unbounded_String ("Item: ");
      This.RESULT_U := To_Unbounded_String ("Result: ");
      This.COLON_SEP := To_Unbounded_String (": ");
   end Initialize_Fields;

   procedure Initialize (This : in out CommonLabels'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CommonLabels_Access is
      This : constant CommonLabels_Access := new CommonLabels;
   begin
      CommonLabels_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CommonLabels_Access is
   begin
        return CommonLabels_Package.instance;
   end getInstance;

begin
   null;
   instance := CommonLabels_Package.Create;

end org.allbinary.string_Id.CommonLabels_Package;


