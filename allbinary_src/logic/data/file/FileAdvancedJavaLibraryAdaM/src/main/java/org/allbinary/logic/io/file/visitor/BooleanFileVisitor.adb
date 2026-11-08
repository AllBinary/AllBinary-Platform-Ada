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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.io.path.PathUtil_Package;

package body org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
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
   procedure Initialize_Fields (This : in out BooleanFileVisitor'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.filterStringBasicArrayList := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      filterStringBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (filterStringBasicArrayList_Param);
   begin
      Initialize_Fields (This);
        BooleanFileVisitor'Class (This).setFilterStringBasicArrayList (filterStringBasicArrayList);
        PreLogUtil_Package.put (To_Unbounded_String ("Filter BasicArrayList: ") & BooleanFileVisitor'Class (This).getFilterStringBasicArrayList.toString, BooleanFileVisitor_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BooleanFileVisitor_Access is
      This : constant BooleanFileVisitor_Access := new BooleanFileVisitor;
   begin
      BooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList_Param);
      return This;
   end Create;

   function visit (This : in out BooleanFileVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return Java_Object_Access (BooleanFileVisitor'Class (This).visit (AbFile_Access (anyType)));
   end visit;

   function visit (This : in out BooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      list : BasicArrayList_Access;
      size : Integer;
      nextFileFilterString : Unbounded_String;
      index : Integer;
   begin
        list := BooleanFileVisitor'Class (This).getFilterStringBasicArrayList;
        size := list.size;
        nextFileFilterString := Null_Unbounded_String;
        for index in 0 .. (size) - 1 loop
            nextFileFilterString := Java_Unbox (list.get (index));
            if BooleanFileVisitor'Class (This).visit (file, nextFileFilterString) then
                return True;
            end if;
        end loop;
        return False;
   end visit;

   function getFilterStringBasicArrayList (This : in out BooleanFileVisitor) return BasicArrayList_Access is
   begin
        return This.filterStringBasicArrayList;
   end getFilterStringBasicArrayList;

   procedure setFilterStringBasicArrayList (This : in out BooleanFileVisitor; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      filterStringBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (filterStringBasicArrayList_Param);
   begin
        This.filterStringBasicArrayList := filterStringBasicArrayList;
   end setFilterStringBasicArrayList;

   function visit (This : in out BooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return False;
   end visit;

   procedure visit (This : in out BooleanFileVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := BooleanFileVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out BooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Boolean := BooleanFileVisitor'Class (This).visit (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out BooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) is
      Java_Result : constant Boolean := BooleanFileVisitor'Class (This).visit (file_Param => file_Param, fileNameString => fileNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out BooleanFileVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return BooleanFileVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out BooleanFileVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := BooleanFileVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package;


