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


package body admin.taghelpers.StoreFrontHelper_Package is

   procedure Initialize_Fields (This : in out StoreFrontHelper'Class) is
   begin
      null;
      This.storeFrontInterface := null;
      This.currentLocation := Null_Unbounded_String;
      This.currentHomeLocation := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
      storeName : Unbounded_String;
      stringUtil : StringUtil_Access;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        storeName := Unbounded_String (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        if (storeName) /= (Null_Unbounded_String) then
            This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
            This.currentLocation := Replace_Package.Create (CommonSeps_Package.getInstance.SPACE, To_Unbounded_String ("%20")).all_Id ((This.storeFrontInterface.getCurrentHostName) + (This.storeFrontInterface.getCurrentHostNamePath));
            This.currentHomeLocation := Replace_Package.Create (CommonSeps_Package.getInstance.SPACE, To_Unbounded_String ("%20")).all_Id ((This.storeFrontInterface.getCurrentHomeHostName) + (This.storeFrontInterface.getCurrentHomeHostNamePath));
        else
            stringUtil := StringUtil_Package.getInstance;
            This.storeFrontInterface := StoreFront_Package.Create;
            This.currentLocation := stringUtil.EMPTY_STRING;
            This.currentHomeLocation := stringUtil.EMPTY_STRING;
        end if;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return StoreFrontHelper_Access is
      This : constant StoreFrontHelper_Access := new StoreFrontHelper;
   begin
      StoreFrontHelper_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   function getCurrentLocation (This : in out StoreFrontHelper) return Unbounded_String is
   begin
        return This.currentLocation;
   end getCurrentLocation;

   function getCurrentHomeLocation (This : in out StoreFrontHelper) return Unbounded_String is
   begin
        return This.currentHomeLocation;
   end getCurrentHomeLocation;

end admin.taghelpers.StoreFrontHelper_Package;


