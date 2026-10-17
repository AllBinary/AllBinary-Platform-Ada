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


package body org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package is

   procedure Initialize_Fields (This : in out BooleanFileVisitor'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.filterStringBasicArrayList := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access) is
   begin
      Initialize_Fields (This);
        This.setFilterStringBasicArrayList (filterStringBasicArrayList);
        PreLogUtil_Package.put (To_Unbounded_String ("Filter BasicArrayList: ") & This.getFilterStringBasicArrayList.toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (filterStringBasicArrayList : BasicArrayList_Access) return BooleanFileVisitor_Access is
      This : constant BooleanFileVisitor_Access := new BooleanFileVisitor;
   begin
      BooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList);
      return This;
   end Create;

   function visit (This : in out BooleanFileVisitor; anyType : Java_Object_Access) return Java_Object_Access is
   begin
        return Java_Object_Access (This.visit (AbFile_Access (anyType)));
   end visit;

   function visit (This : in out BooleanFileVisitor; file : AbFile_Access) return Boolean is
      list : BasicArrayList_Access;
      size : Integer;
      nextFileFilterString : Unbounded_String;
      index : Integer;
   begin
        list := This.getFilterStringBasicArrayList;
        size := list.size;
        nextFileFilterString := Null_Unbounded_String;
        for index in 0 .. (size) - 1 loop
            nextFileFilterString := Unbounded_String (list.get (index));
            if This.visit (file, nextFileFilterString).booleanValue then
                return True;
            end if;
        end loop;
        return False;
   end visit;

   function getFilterStringBasicArrayList (This : in out BooleanFileVisitor) return BasicArrayList_Access is
   begin
        return This.filterStringBasicArrayList;
   end getFilterStringBasicArrayList;

   procedure setFilterStringBasicArrayList (This : in out BooleanFileVisitor; filterStringBasicArrayList : BasicArrayList_Access) is
   begin
        This.filterStringBasicArrayList := filterStringBasicArrayList;
   end setFilterStringBasicArrayList;

   function visit (This : in out BooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String) return Boolean is
   begin
        return False;
   end visit;

   procedure visit (This : in out BooleanFileVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := BooleanFileVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out BooleanFileVisitor; file : AbFile_Access) is
      Java_Result : constant Boolean := BooleanFileVisitor'Class (This).visit (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out BooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String) is
      Java_Result : constant Boolean := BooleanFileVisitor'Class (This).visit (file, fileNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package;


