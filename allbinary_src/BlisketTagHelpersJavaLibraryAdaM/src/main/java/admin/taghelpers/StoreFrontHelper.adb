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


with org.allbinary.business.context.modules.storefront.StoreFront_Package; use org.allbinary.business.context.modules.storefront.StoreFront_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body admin.taghelpers.StoreFrontHelper_Package is

   package StoreFront_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFront_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out StoreFrontHelper'Class) is
   begin
      null;
      This.storeFrontInterface := null;
      This.currentLocation := Null_Unbounded_String;
      This.currentHomeLocation := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      storeName : Unbounded_String;
      stringUtil : StringUtil_Access;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        storeName := Java_Unbox (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        if (storeName) /= (Null_Unbounded_String) then
            This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
            This.currentLocation := Replace_Package.Create (CommonSeps_Package.getInstance.SPACE, To_Unbounded_String ("%20")).all_Id ((This.storeFrontInterface.getCurrentHostName) + (This.storeFrontInterface.getCurrentHostNamePath));
            This.currentHomeLocation := Replace_Package.Create (CommonSeps_Package.getInstance.SPACE, To_Unbounded_String ("%20")).all_Id ((This.storeFrontInterface.getCurrentHomeHostName) + (This.storeFrontInterface.getCurrentHomeHostNamePath));
        else
            stringUtil := StringUtil_Package.getInstance;
            This.storeFrontInterface := StoreFrontInterface_Access (StoreFront_Package.Create);
            This.currentLocation := stringUtil.EMPTY_STRING;
            This.currentHomeLocation := stringUtil.EMPTY_STRING;
        end if;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreFrontHelper_Access is
      This : constant StoreFrontHelper_Access := new StoreFrontHelper;
   begin
      StoreFrontHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
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


