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


package body org.allbinary.data.resource.ResourceUtil_Package is

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
        return ResourceUtil_Package.instance;
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

   procedure setContextFromActivity (This : in out ResourceUtil; activity_Param : access Activity'Class) is
      activity : Activity_Access := Activity_Access (activity_Param);
   begin
        This.context := activity;
   end setContextFromActivity;

   procedure setContext (This : in out ResourceUtil; aContext_Param : access Context'Class) is
      aContext : Context_Access := Context_Access (aContext_Param);
   begin
        This.context := aContext;
   end setContext;

   function getResourceId (This : in out ResourceUtil; resource : Unbounded_String) return Integer is
      value : Integer;
   begin
        value := Integer (This.hashMap.get (resource));
        if (DebugFactory_Package.getInstance) /= (NoDebug_Package.getInstance) then
            PreLogUtil_Package.put (StringMaker_Package.Create.append (resource).append (CommonSeps_Package.getInstance.COLON).append (value.toString).toString, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getResourceId"));
        end if;
        return value;
   end getResourceId;

   procedure addResource (This : in out ResourceUtil; resource : Unbounded_String; value : Integer) is
   begin
        if (DebugFactory_Package.getInstance) /= (NoDebug_Package.getInstance) then
            PreLogUtil_Package.put (StringMaker_Package.Create.append (resource).append (CommonSeps_Package.getInstance.COLON).append (value.toString).toString, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("addResource"));
            if This.containsDuplicate (resource, value) then
                ForcedLogUtil_Package.log (StringMaker_Package.Create.append (To_Unbounded_String ("Found Duplicate Resource: ")).append (resource).toString, ResourceUtil_Access'(This'Unchecked_Access));
            end if;
        end if;
        This.hashMap.put (resource, value);
   end addResource;

   function containsDuplicate (This : in out ResourceUtil; resource : Unbounded_String; value : Integer) return Boolean is
      objectArray : Java_Object_Access_Array_Access;
      integer_Id : Integer;
      index : Integer;
   begin
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (This.hashMap);
        index := objectArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            integer_Id := Integer (This.hashMap.get (Java_Object_Access (objectArray (index))));
            if (resource) /= (objectArray (index)) then
                if (value) /= (integer_Id) then
                    if (value.intValue) = (integer_Id.intValue) then
                        return True;
                    end if;
                end if;
            end if;
        end loop;
        return False;
   end containsDuplicate;

   procedure setResources (This : in out ResourceUtil; resources_Param : access Resources'Class) is
      resources : Resources_Access := Resources_Access (resources_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Resource Loader: ")).append (To_Unbounded_String (Ada.Tags.Expanded_Name (resources.all'Tag))).toString, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("setResources"));
        This.resources := resources;
   end setResources;

   --  throws Exception
   function getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) return InputStream_Access is
      integer_Id : Integer;
      id : Integer;
      resources : Resources_Access;
      inputStream : InputStream_Access;
   begin
        integer_Id := Integer (This.hashMap.get (resource));
        id := integer_Id.intValue;
        resources := (Resources_Access (This.resources));
        inputStream := resources.openRawResource (id);
        if (inputStream) /= (null) then
            return inputStream;
        end if;
        return inputStream;
   end getResourceAsStream;

   procedure getResourceId (This : in out ResourceUtil; resource : Unbounded_String) is
      Java_Result : constant Integer := ResourceUtil'Class (This).getResourceId (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceId;

   procedure containsDuplicate (This : in out ResourceUtil; resource : Unbounded_String; value : Integer) is
      Java_Result : constant Boolean := ResourceUtil'Class (This).containsDuplicate (resource, value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsDuplicate;

   procedure getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) is
      Java_Result : constant InputStream_Access := ResourceUtil'Class (This).getResourceAsStream (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceAsStream;

begin
   null;
   instance := ResourceUtil_Package.Create;

end org.allbinary.data.resource.ResourceUtil_Package;


