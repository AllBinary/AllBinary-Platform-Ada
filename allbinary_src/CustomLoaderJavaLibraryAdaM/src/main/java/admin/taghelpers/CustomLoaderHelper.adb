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
with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package body admin.taghelpers.CustomLoaderHelper_Package is

   package AppUrlGlobals_Package renames Standard.org.allbinary.globals.AppUrlGlobals_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out CustomLoaderHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomLoaderHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return CustomLoaderHelper_Access is
      This : constant CustomLoaderHelper_Access := new CustomLoaderHelper;
   begin
      CustomLoaderHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out CustomLoaderHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CustomLoaderHelper_Access is
      This : constant CustomLoaderHelper_Access := new CustomLoaderHelper;
   begin
      CustomLoaderHelper_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getWebappPath (This : in out CustomLoaderHelper) return Unbounded_String is
   begin
        begin
            return org_Package.allbinary.globals.URLGLOBALS.getWebappPath;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return Null_Unbounded_String;
                end;
        end;
   end getWebappPath;

   --  throws Exception
   procedure setWebappPath (This : in out CustomLoaderHelper; path : Unbounded_String) is
      urlGlobals : AppUrlGlobals_Access;
   begin
        begin
            urlGlobals := AppUrlGlobals_Package.Create;
            urlGlobals.setWebappPath (path);
            URLGLOBALS_Package.init (urlGlobals);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CustomLoaderHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setWebappPath()"), e);
            end if;
                end;
        end;
   end setWebappPath;

end admin.taghelpers.CustomLoaderHelper_Package;


