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


package body org.allbinary.game.combat.damage.AnimationDamageFloaters_Package is

   procedure Initialize_Fields (This : in out AnimationDamageFloaters'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AnimationDamageFloaters'Class; layerInterface : AllBinaryLayer_Access; animationInterfaceArray : IndexedAnimation_Access_Array_Access; dx : Integer; dy : Integer) is
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

   function Create (layerInterface : AllBinaryLayer_Access; animationInterfaceArray : IndexedAnimation_Access_Array_Access; dx : Integer; dy : Integer) return AnimationDamageFloaters_Access is
      This : constant AnimationDamageFloaters_Access := new AnimationDamageFloaters;
   begin
      Initialize (This.all, layerInterface, animationInterfaceArray, dx, dy);
      return This;
   end Create;

   procedure add (This : in out AnimationDamageFloaters; damage : Integer) is
      i : Integer;
   begin
        i := This.circularIndexUtil.getIndex;
        This.animationInterfaceArray (i).setFrame (0);
        This.circularIndexUtil.next;
   end add;

   procedure paint (This : in out AnimationDamageFloaters; graphics : Graphics_Access) is
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
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            canvasStrings := CanvasStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, canvasStrings.PAINT, e);
        end;
   end paint;

end org.allbinary.game.combat.damage.AnimationDamageFloaters_Package;


