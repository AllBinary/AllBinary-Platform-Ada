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


package body org.allbinary.util.ImmutableBasicArrayList_Package is

   procedure Initialize_Fields (This : in out ImmutableBasicArrayList'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImmutableBasicArrayList'Class; name : Unbounded_String; size : Integer) is
   begin
        BasicArrayListS_Package.Initialize (This, size);
        Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String; size : Integer) return ImmutableBasicArrayList_Access is
      This : constant ImmutableBasicArrayList_Access := new ImmutableBasicArrayList;
   begin
      ImmutableBasicArrayList_Package.Initialize (This.all, name, size);
      return This;
   end Create;

   function add (This : in out ImmutableBasicArrayList; e_Param : access Java_Object'Class) return Boolean is
      e : constant Java_Object_Access := Java_Object_Access (e_Param);
   begin
        ForcedLogUtil_Package.log (This.name, ImmutableBasicArrayList_Access'(This'Unchecked_Access));
        return True;
   end add;

   procedure addAt (This : in out ImmutableBasicArrayList; index : Integer; element_Param : access Java_Object'Class) is
      element : constant Java_Object_Access := Java_Object_Access (element_Param);
   begin
        ForcedLogUtil_Package.log (This.name, ImmutableBasicArrayList_Access'(This'Unchecked_Access));
   end addAt;

   function toString (This : in out ImmutableBasicArrayList) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure add (This : in out ImmutableBasicArrayList; e_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := ImmutableBasicArrayList'Class (This).add (e_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end add;

end org.allbinary.util.ImmutableBasicArrayList_Package;


