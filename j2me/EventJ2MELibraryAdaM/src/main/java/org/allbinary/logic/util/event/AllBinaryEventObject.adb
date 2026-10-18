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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package body org.allbinary.logic.util.event.AllBinaryEventObject_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   procedure Initialize_Fields (This : in out AllBinaryEventObject'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryEventObject'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
      Initialize_Fields (This);
        This.source := anyType;
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return AllBinaryEventObject_Access is
      This : constant AllBinaryEventObject_Access := new AllBinaryEventObject;
   begin
      AllBinaryEventObject_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   function getSource (This : in out AllBinaryEventObject) return Java_Object_Access is
   begin
        return This.source;
   end getSource;

   procedure setSource (This : in out AllBinaryEventObject; source_Param : access Java_Object'Class) is
      source : constant Java_Object_Access := Java_Object_Access (source_Param);
   begin
        This.source := source;
   end setSource;

   procedure setSource (This : in out AllBinaryEventObject; Value : Unbounded_String) is
   begin
      AllBinaryEventObject'Class (This).setSource (Java_Box (Value));
   end setSource;

begin
   null;
   NULL_EVENT := AllBinaryEventObject_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT);

end org.allbinary.logic.util.event.AllBinaryEventObject_Package;


