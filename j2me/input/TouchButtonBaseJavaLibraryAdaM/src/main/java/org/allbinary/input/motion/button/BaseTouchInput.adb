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



package body org.allbinary.input.motion.button.BaseTouchInput_Package is

   procedure Initialize_Fields (This : in out BaseTouchInput'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BaseTouchInput'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BaseTouchInput_Access is
      This : constant BaseTouchInput_Access := new BaseTouchInput;
   begin
      BaseTouchInput_Package.Initialize (This.all);
      return This;
   end Create;

   function getList (This : in out BaseTouchInput) return BasicArrayList_Access is
   begin
        return This.basicArrayListUtil.getImmutableInstance;
   end getList;

   function toString (This : in out BaseTouchInput) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end toString;

end org.allbinary.input.motion.button.BaseTouchInput_Package;


