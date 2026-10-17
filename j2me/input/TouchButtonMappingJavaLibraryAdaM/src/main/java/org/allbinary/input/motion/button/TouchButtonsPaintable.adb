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


package body org.allbinary.input.motion.button.TouchButtonsPaintable_Package is

   procedure Initialize_Fields (This : in out TouchButtonsPaintable'Class) is
   begin
      null;
      
      
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      This.touchButtonFactory := TouchButtonFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonsPaintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.foregroundBasicColor := basicColor;
        This.foregroundColor := basicColor.intValue;
   end Initialize;

   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return TouchButtonsPaintable_Access is
      This : constant TouchButtonsPaintable_Access := new TouchButtonsPaintable;
   begin
      TouchButtonsPaintable_Package.Initialize (This.all, basicColor_Param);
      return This;
   end Create;

   procedure paint (This : in out TouchButtonsPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      list : BasicArrayList_Access;
      touchButton : TouchButton_Access;
      index : Integer;
   begin
        list := This.touchButtonFactory.getList;
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.foregroundBasicColor, This.foregroundColor);
        touchButton := null;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            touchButton := TouchButton_Access (list.objectArray (index));
            touchButton.paint (graphics);
        end loop;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            touchButton := TouchButton_Access (list.objectArray (index));
            touchButton.paintHint (graphics);
        end loop;
   end paint;

end org.allbinary.input.motion.button.TouchButtonsPaintable_Package;


