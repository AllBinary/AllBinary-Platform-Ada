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


package body org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package is

   procedure Initialize_Fields (This : in out BasicTouchButtonsBuilder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicTouchButtonsBuilder'Class) is
   begin
      BaseTouchInput_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicTouchButtonsBuilder_Access is
      This : constant BasicTouchButtonsBuilder_Access := new BasicTouchButtonsBuilder;
   begin
      BasicTouchButtonsBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BaseTouchInput_Access is
   begin
        return BasicTouchButtonsBuilder_Package.SINGLETON;
   end getInstance;

   function getList (This : in out BasicTouchButtonsBuilder) return BasicArrayList_Access is
      list : BasicArrayList_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, BasicTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.GET_LIST);
            list := BasicArrayListD_Package.Create;
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.GET_LIST, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

begin
   null;
   SINGLETON := BasicTouchButtonsBuilder_Package.Create;

end org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package;


