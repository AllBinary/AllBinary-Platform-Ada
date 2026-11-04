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


with java.io.InputStream_Package; use java.io.InputStream_Package;
with android.app.Activity_Package; use android.app.Activity_Package;
with android.content.Context_Package; use android.content.Context_Package;
with android.content.res.Resources_Package; use android.content.res.Resources_Package;
with org.allbinary.debug.DebugFactory_Package; use org.allbinary.debug.DebugFactory_Package;
with org.allbinary.debug.NoDebug_Package; use org.allbinary.debug.NoDebug_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;

package body org.allbinary.data.resource.ResourceUtil_Package is

   package DebugFactory_Package renames Standard.org.allbinary.debug.DebugFactory_Package;
   package NoDebug_Package renames Standard.org.allbinary.debug.NoDebug_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   function "=" (Left, Right : Activity_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   function "=" (Left, Right : Activity_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   function "=" (Left, Right : Activity_Access_Array_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Context_Access is android.content.Context_Package_References.Context_Access;
   function "=" (Left, Right : Context_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array is android.content.Context_Package_References.Context_Access_Array;
   function "=" (Left, Right : Context_Access_Array) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access;
   function "=" (Left, Right : Context_Access_Array_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access_Array is android.content.Context_Package_References.Context_Access_Array_Access_Array;
   function "=" (Left, Right : Context_Access_Array_Access_Array) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Context_Access_Array_Access_Array_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype Resources_Access is android.content.res.Resources_Package_References.Resources_Access;
   function "=" (Left, Right : Resources_Access) return Boolean renames android.content.res.Resources_Package_References."=";
   subtype Resources_Access_Array is android.content.res.Resources_Package_References.Resources_Access_Array;
   function "=" (Left, Right : Resources_Access_Array) return Boolean renames android.content.res.Resources_Package_References."=";
   subtype Resources_Access_Array_Access is android.content.res.Resources_Package_References.Resources_Access_Array_Access;
   function "=" (Left, Right : Resources_Access_Array_Access) return Boolean renames android.content.res.Resources_Package_References."=";
   subtype Resources_Access_Array_Access_Array is android.content.res.Resources_Package_References.Resources_Access_Array_Access_Array;
   function "=" (Left, Right : Resources_Access_Array_Access_Array) return Boolean renames android.content.res.Resources_Package_References."=";
   subtype Resources_Access_Array_Access_Array_Access is android.content.res.Resources_Package_References.Resources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Resources_Access_Array_Access_Array_Access) return Boolean renames android.content.res.Resources_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out ResourceUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.context := NullUtil_Package.getInstance.NULL_OBJECT;
      This.resources := NullUtil_Package.getInstance.NULL_OBJECT;
      This.hashMap := StdUtil_Package.getInstance.createHashtable;
   end Initialize_Fields;


   function getInstance return ResourceUtil_Access is
   begin
        return ResourceUtil_Access (ResourceUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out ResourceUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ResourceUtil_Access is
      This : constant ResourceUtil_Access := new ResourceUtil;
   begin
      ResourceUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setLoadingPaths (This : in out ResourceUtil; path : Unbounded_String; ext : Unbounded_String) is
   begin
        This.logUtil.putF (CommonStrings_Package.getInstance.NOT_IMPLEMENTED, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("setLoadingPaths"));
   end setLoadingPaths;

   function getContext (This : in out ResourceUtil) return Context_Access is
   begin
        return Context_Access (This.context);
   end getContext;

   procedure setContextFromActivity (This : in out ResourceUtil; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        This.context := Java_Object_Access (activity);
   end setContextFromActivity;

   procedure setContext (This : in out ResourceUtil; aContext_Param : access Context_Package.Context'Class) is
      aContext : constant Context_Access := Context_Access (aContext_Param);
   begin
        This.context := Java_Object_Access (aContext);
   end setContext;

   function getResourceId (This : in out ResourceUtil; resource : Unbounded_String) return Integer is
      value : Integer;
   begin
        value := Java_Unbox_Integer (This.hashMap.get (Java_Box (resource)));
        if (DebugFactory_Package.getInstance) /= (NoDebug_Package.getInstance) then
            PreLogUtil_Package.put (StringMaker_Package.Create.append (resource).append (CommonSeps_Package.getInstance.COLON).append (To_Unbounded_String (Java_Image (value))).toString, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getResourceId"));
        end if;
        return value;
   end getResourceId;

   procedure addResource (This : in out ResourceUtil; resource : Unbounded_String; value : Integer) is
   begin
        if (DebugFactory_Package.getInstance) /= (NoDebug_Package.getInstance) then
            PreLogUtil_Package.put (StringMaker_Package.Create.append (resource).append (CommonSeps_Package.getInstance.COLON).append (To_Unbounded_String (Java_Image (value))).toString, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("addResource"));
            if ResourceUtil'Class (This).containsDuplicate (resource, value) then
                ForcedLogUtil_Package.log (StringMaker_Package.Create.append (To_Unbounded_String ("Found Duplicate Resource: ")).append (resource).toString, ResourceUtil_Access'(This'Unchecked_Access));
            end if;
        end if;
        This.hashMap.put (Java_Box (resource), Java_Box (value));
   end addResource;

   function containsDuplicate (This : in out ResourceUtil; resource : Unbounded_String; value : Integer) return Boolean is
      objectArray : Java_Object_Access_Array_Access;
      integer_Id : Integer;
      index : Integer;
   begin
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (This.hashMap);
        index := objectArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            integer_Id := Java_Unbox_Integer (This.hashMap.get (Java_Object_Access (objectArray (index))));
            if (resource) /= (objectArray (index)) then
                if (value) /= (integer_Id) then
                    if (Integer (value)) = (Integer (integer_Id)) then
                        return True;
                    end if;
                end if;
            end if;
        end loop;
        return False;
   end containsDuplicate;

   procedure setResources (This : in out ResourceUtil; resources_Param : access Resources_Package.Resources'Class) is
      resources : constant Resources_Access := Resources_Access (resources_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Resource Loader: ")).append (To_Unbounded_String (Ada.Tags.Expanded_Name (resources.all'Tag))).toString, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("setResources"));
        This.resources := Java_Object_Access (resources);
   end setResources;

   --  throws Exception
   function getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) return InputStream_Access is
      integer_Id : Integer;
      id : Integer;
      resources : Resources_Access;
      inputStream : InputStream_Access;
   begin
        integer_Id := Java_Unbox_Integer (This.hashMap.get (Java_Box (resource)));
        id := Integer (integer_Id);
        resources := (Resources_Access (This.resources));
        inputStream := resources.openRawResource (id);
        if (inputStream) /= (null) then
            return inputStream;
        end if;
        return inputStream;
   end getResourceAsStream;

   procedure getResourceId (This : in out ResourceUtil; resource : Unbounded_String) is
      Java_Result : constant Integer := ResourceUtil'Class (This).getResourceId (resource => resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceId;

   procedure containsDuplicate (This : in out ResourceUtil; resource : Unbounded_String; value : Integer) is
      Java_Result : constant Boolean := ResourceUtil'Class (This).containsDuplicate (resource => resource, value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsDuplicate;

   procedure getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) is
      Java_Result : constant InputStream_Access := ResourceUtil'Class (This).getResourceAsStream (resource => resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceAsStream;

begin
   null;
   instance := ResourceUtil_Package.Create;

end org.allbinary.data.resource.ResourceUtil_Package;


