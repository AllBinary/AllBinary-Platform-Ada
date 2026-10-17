-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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


package body org.allbinary.input.motion.button.EndLevelNoBuildingSelectedTouchButtonsBuilder_Package is

   procedure Initialize_Fields (This : in out EndLevelNoBuildingSelectedTouchButtonsBuilder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out EndLevelNoBuildingSelectedTouchButtonsBuilder'Class) is
   begin
      TouchButtonsListBuilder_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return EndLevelNoBuildingSelectedTouchButtonsBuilder_Access is
      This : constant EndLevelNoBuildingSelectedTouchButtonsBuilder_Access := new EndLevelNoBuildingSelectedTouchButtonsBuilder;
   begin
      EndLevelNoBuildingSelectedTouchButtonsBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getList (This : in out EndLevelNoBuildingSelectedTouchButtonsBuilder) return BasicArrayList_Access is
      list : BasicArrayList_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, EndLevelNoBuildingSelectedTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            list := BasicArrayListD_Package.Create;
            list.addAllList (BasicTouchButtonsBuilder_Package.Create.getList);
            list.addAllList (BuildingScrollTouchButtonsBuilder_Package.Create.getList);
            This.addList (list);
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, EndLevelNoBuildingSelectedTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

end org.allbinary.input.motion.button.EndLevelNoBuildingSelectedTouchButtonsBuilder_Package;


