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


with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package body org.allbinary.game.combat.damage.AnimationDamageFloaters_Package is

   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   procedure Initialize_Fields (This : in out AnimationDamageFloaters'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AnimationDamageFloaters'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; dx : Integer; dy : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      index : Integer;
   begin
      DamageFloaters_Package.Initialize (This);
      Initialize_Fields (This);
        This.animationInterfaceArray := animationInterfaceArray;
        for index in reverse 0 .. (This.animationInterfaceArray'Length) - (1) loop
            This.animationInterfaceArray (index).setFrame ((This.animationInterfaceArray (index).getSize) - (1));
        end loop;
        This.layerInterface := layerInterface;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.animationInterfaceArray'Length);
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; dx : Integer; dy : Integer) return AnimationDamageFloaters_Access is
      This : constant AnimationDamageFloaters_Access := new AnimationDamageFloaters;
   begin
      AnimationDamageFloaters_Package.Initialize (This.all, layerInterface_Param, animationInterfaceArray, dx, dy);
      return This;
   end Create;

   procedure add (This : in out AnimationDamageFloaters; damage : Integer) is
      i : Integer;
   begin
        i := This.circularIndexUtil.getIndex;
        This.animationInterfaceArray (i).setFrame (0);
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
   end add;

   procedure paint (This : in out AnimationDamageFloaters; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
      x : Integer;
      y : Integer;
      animationInterface : IndexedAnimation_Access;
      delta_Id : Integer;
      index : Integer;
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
   begin
        begin
            viewPosition := This.layerInterface.getViewPosition;
            x := viewPosition.getX;
            y := viewPosition.getY;
            for index in 0 .. (This.animationInterfaceArray'Length) - 1 loop
                animationInterface := This.animationInterfaceArray (index);
                if (animationInterface.getFrame) < ((animationInterface.getAnimationSize) - (1)) then
                    delta_Id := (animationInterface.getFrame) * (20);
                    animationInterface.paintXY (graphics, (x) + (This.dx), ((y) - (delta_Id)) + (This.dy));
                    animationInterface.nextFrame;
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            canvasStrings := CanvasStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, AnimationDamageFloaters_Access'(This'Unchecked_Access), canvasStrings.PAINT, e);
                end;
        end;
   end paint;

end org.allbinary.game.combat.damage.AnimationDamageFloaters_Package;


