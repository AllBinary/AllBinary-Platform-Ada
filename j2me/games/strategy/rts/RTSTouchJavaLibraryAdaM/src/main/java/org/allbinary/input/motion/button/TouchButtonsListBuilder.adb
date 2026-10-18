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

package body org.allbinary.input.motion.button.TouchButtonsListBuilder_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out TouchButtonsListBuilder'Class) is
   begin
      null;
      This.baseTouchInputList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out TouchButtonsListBuilder'Class) is
   begin
      BaseTouchInput_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchButtonsListBuilder_Access is
      This : constant TouchButtonsListBuilder_Access := new TouchButtonsListBuilder;
   begin
      TouchButtonsListBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   procedure addList (This : in out TouchButtonsListBuilder; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      baseTouchInput : BaseTouchInput_Access;
      index : Integer;
   begin
        size := This.baseTouchInputList.size;
        baseTouchInput := null;
        for index in 0 .. (size) - 1 loop
            baseTouchInput := BaseTouchInput_Access (This.baseTouchInputList.get (index));
            list.addAllList (baseTouchInput.getList);
        end loop;
   end addList;

   procedure add (This : in out TouchButtonsListBuilder; baseTouchInput_Param : access BaseTouchInput_Package.BaseTouchInput'Class) is
      baseTouchInput : constant BaseTouchInput_Access := BaseTouchInput_Access (baseTouchInput_Param);
   begin
        This.baseTouchInputList.add (Java_Object_Access (baseTouchInput));
   end add;

end org.allbinary.input.motion.button.TouchButtonsListBuilder_Package;


