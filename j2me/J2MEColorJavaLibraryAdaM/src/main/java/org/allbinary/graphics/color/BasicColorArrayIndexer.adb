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
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package body org.allbinary.graphics.color.BasicColorArrayIndexer_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   procedure Initialize_Fields (This : in out BasicColorArrayIndexer'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicColorArrayIndexer'Class; basicColorArray : BasicColor_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.basicColorArray := basicColorArray;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.basicColorArray'Length);
   end Initialize;

   function Create (basicColorArray : BasicColor_Access_Array_Access) return BasicColorArrayIndexer_Access is
      This : constant BasicColorArrayIndexer_Access := new BasicColorArrayIndexer;
   begin
      BasicColorArrayIndexer_Package.Initialize (This.all, basicColorArray);
      return This;
   end Create;

   procedure next (This : in out BasicColorArrayIndexer) is
   begin
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
   end next;

   function get (This : in out BasicColorArrayIndexer) return BasicColor_Access is
   begin
        return This.basicColorArray (This.circularIndexUtil.getIndex);
   end get;

   function getBasicColorArray (This : in out BasicColorArrayIndexer) return BasicColor_Access_Array_Access is
   begin
        return This.basicColorArray;
   end getBasicColorArray;

end org.allbinary.graphics.color.BasicColorArrayIndexer_Package;


