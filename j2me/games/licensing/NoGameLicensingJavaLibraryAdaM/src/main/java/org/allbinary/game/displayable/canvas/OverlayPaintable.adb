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


package body org.allbinary.game.displayable.canvas.OverlayPaintable_Package is

   procedure Initialize_Fields (This : in out OverlayPaintable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out OverlayPaintable'Class) is
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OverlayPaintable_Access is
      This : constant OverlayPaintable_Access := new OverlayPaintable;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure update (This : in out OverlayPaintable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.UPDATE, e);
                end;
        end;
   end update;

   procedure paint (This : in out OverlayPaintable; graphics : Graphics_Access) is
   begin
        null;
   end paint;

end org.allbinary.game.displayable.canvas.OverlayPaintable_Package;


