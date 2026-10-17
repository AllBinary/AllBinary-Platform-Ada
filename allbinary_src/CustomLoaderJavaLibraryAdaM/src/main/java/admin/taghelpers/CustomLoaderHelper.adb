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


package body admin.taghelpers.CustomLoaderHelper_Package is

   procedure Initialize_Fields (This : in out CustomLoaderHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomLoaderHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return CustomLoaderHelper_Access is
      This : constant CustomLoaderHelper_Access := new CustomLoaderHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CustomLoaderHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CustomLoaderHelper_Access is
      This : constant CustomLoaderHelper_Access := new CustomLoaderHelper;
   begin
      Initialize (This.all);
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
            URLGLOBALS.init (urlGlobals);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setWebappPath()"), e);
            end if;
                end;
        end;
   end setWebappPath;

   procedure getWebappPath (This : in out CustomLoaderHelper) is
      Java_Result : constant Unbounded_String := CustomLoaderHelper'Class (This).getWebappPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWebappPath;

end admin.taghelpers.CustomLoaderHelper_Package;


