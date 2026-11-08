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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.directory.SubDirectory_Package; use org.allbinary.logic.io.file.directory.SubDirectory_Package;
with org.allbinary.logic.io.file.directory.SubDirectory_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.business.init.WeblisketFinder_Package is

   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   function "=" (Left, Right : AbFile_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype SubDirectory_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access;
   function "=" (Left, Right : SubDirectory_Access) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
   subtype SubDirectory_Access_Array is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array;
   function "=" (Left, Right : SubDirectory_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
   subtype SubDirectory_Access_Array_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access;
   function "=" (Left, Right : SubDirectory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
   subtype SubDirectory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access_Array;
   function "=" (Left, Right : SubDirectory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
   subtype SubDirectory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SubDirectory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out WeblisketFinder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.subDirectory := SubDirectory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return WeblisketFinder_Access is
   begin
        return WeblisketFinder_Access (WeblisketFinder_Package.instance);
   end getInstance;

   procedure Initialize (This : in out WeblisketFinder'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WeblisketFinder_Access is
      This : constant WeblisketFinder_Access := new WeblisketFinder;
   begin
      WeblisketFinder_Package.Initialize (This.all);
      return This;
   end Create;

   function findAll (This : in out WeblisketFinder; path : Unbounded_String) return BasicArrayList_Access is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, WeblisketFinder_Access'(This'Unchecked_Access), To_Unbounded_String ("findAll"));
            return This.subDirectory.search (WeblisketFinder_Package.KEY, AbFile_Package.createAbFile (path));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, WeblisketFinder_Access'(This'Unchecked_Access), To_Unbounded_String ("findAll"), e);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, WeblisketFinder_Access'(This'Unchecked_Access), To_Unbounded_String ("findAll"), e);
            end if;
            return null;
                end;
        end;
   end findAll;

   function getInstallationPath (This : in out WeblisketFinder; file_Param : access AbFile_Package.AbFile'Class) return Unbounded_String is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      filePath : Unbounded_String;
      end_Id : Integer;
   begin
        begin
            filePath := file.getPath;
            end_Id := Java_Index_Of (filePath, Java_Image (KEY));
            if (end_Id) < (0) then
                return Null_Unbounded_String;
            end if;
            return Unbounded_Slice (filePath, (0) + 1, end_Id);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRELOADERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, WeblisketFinder_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstallationPath"), e);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end getInstallationPath;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
      stringUtil : StringUtil_Access;
      vector : BasicArrayList_Access;
   begin
        stringUtil := StringUtil_Package.getInstance;
        vector := WeblisketFinder_Package.getInstance.findAll (stringUtil.EMPTY_STRING);
        Ada.Text_IO.Put_Line (Java_Image (vector.size));
   end main;

   procedure findAll (This : in out WeblisketFinder; path : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := WeblisketFinder'Class (This).findAll (path => path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end findAll;

   procedure getInstallationPath (This : in out WeblisketFinder; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Unbounded_String := WeblisketFinder'Class (This).getInstallationPath (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstallationPath;

begin
   null;
   instance := WeblisketFinder_Package.Create;
   KEY := To_Unbounded_String ("installerdata.dat");

end org.allbinary.business.init.WeblisketFinder_Package;


