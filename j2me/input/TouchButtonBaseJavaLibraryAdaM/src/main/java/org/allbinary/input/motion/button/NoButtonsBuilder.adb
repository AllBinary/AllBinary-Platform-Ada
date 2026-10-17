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


package body org.allbinary.input.motion.button.NoButtonsBuilder_Package is

   procedure Initialize_Fields (This : in out NoButtonsBuilder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out NoButtonsBuilder'Class) is
   begin
      BaseTouchInput_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NoButtonsBuilder_Access is
      This : constant NoButtonsBuilder_Access := new NoButtonsBuilder;
   begin
      NoButtonsBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getList (This : in out NoButtonsBuilder) return BasicArrayList_Access is
      list : BasicArrayList_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, NoButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            list := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, NoButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.GET_LIST, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

end org.allbinary.input.motion.button.NoButtonsBuilder_Package;


