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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package org.allbinary.string_Id.CommonStrings_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type CommonStrings is tagged;
   type CommonStrings_Access is access all CommonStrings'Class;
   type CommonStrings_Access_Array is array (Natural range <>) of CommonStrings_Access;
   type CommonStrings_Access_Array_Access is access all CommonStrings_Access_Array;

   type CommonStrings is new Java_Object with record
      EMPTY : Unbounded_String;
      CREATE_IMAGE : Unbounded_String;
      PLEASE_WAIT : Unbounded_String;
      PLEASE_WAIT_FOR_SERVER : Unbounded_String;
      PERIODS : Unbounded_String;
      LOADING : Unbounded_String;
      CONSTRUCTOR : Unbounded_String;
      START : Unbounded_String;
      END_Id : Unbounded_String;
      EXCEPTION_Id : Unbounded_String;
      EXCEPTION_LABEL : Unbounded_String;
      CLEANUP : Unbounded_String;
      INIT : Unbounded_String;
      CLOSE : Unbounded_String;
      UP : Unbounded_String;
      DOWN : Unbounded_String;
      LEFT : Unbounded_String;
      RIGHT : Unbounded_String;
      DIRECTION_NAME : Unbounded_String_Array_Access;
      CREATE : Unbounded_String;
      REMOVE : Unbounded_String;
      UPDATE : Unbounded_String;
      DELETE : Unbounded_String;
      delete_Case : Unbounded_String;
      LOAD : Unbounded_String;
      SAVE : Unbounded_String;
      ADD : Unbounded_String;
      DROP : Unbounded_String;
      INSERT : Unbounded_String;
      VISIT : Unbounded_String;
      START_METHOD_NAME : Unbounded_String;
      END_METHOD_NAME : Unbounded_String;
      GET : Unbounded_String;
      PROCESS : Unbounded_String;
      GET_INSTANCE : Unbounded_String;
      GET_LIST : Unbounded_String;
      RUN : Unbounded_String;
      START_RUNNABLE : Unbounded_String;
      RUNNING : Unbounded_String;
      END_RUNNABLE : Unbounded_String;
      DISABLE : Unbounded_String;
      ENABLE : Unbounded_String;
      SUCCESS : Unbounded_String;
      FAILURE : Unbounded_String;
      NOT_IMPLEMENTED : Unbounded_String;
      UNKNOWN : Unbounded_String;
      ON_EVENT : Unbounded_String;
      IS_VALID : Unbounded_String;
      TOSTRING : Unbounded_String;
      ADD_LISTENER : Unbounded_String;
      REMOVE_LISTENER : Unbounded_String;
      SIZE : Unbounded_String;
   end record;
   instance : CommonStrings_Access;

   procedure Initialize (This : in out CommonStrings'Class);
   function Create return CommonStrings_Access;
   function getInstance return CommonStrings_Access;
   procedure getInstance;

end org.allbinary.string_Id.CommonStrings_Package;


