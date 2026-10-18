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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package; use org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package;
with org.allbinary.input.motion.button.BuildingScrollTouchButtonsBuilder_Package; use org.allbinary.input.motion.button.BuildingScrollTouchButtonsBuilder_Package;

package body org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   procedure Initialize_Fields (This : in out NoBuildingSelectedTouchButtonsBuilder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out NoBuildingSelectedTouchButtonsBuilder'Class) is
   begin
      BaseTouchInput_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NoBuildingSelectedTouchButtonsBuilder_Access is
      This : constant NoBuildingSelectedTouchButtonsBuilder_Access := new NoBuildingSelectedTouchButtonsBuilder;
   begin
      NoBuildingSelectedTouchButtonsBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getList (This : in out NoBuildingSelectedTouchButtonsBuilder) return BasicArrayList_Access is
      list : BasicArrayList_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, NoBuildingSelectedTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.addAllList (BasicTouchButtonsBuilder_Package.Create.getList);
            list.addAllList (BuildingScrollTouchButtonsBuilder_Package.Create.getList);
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, NoBuildingSelectedTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

end org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder_Package;


