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


package body org.allbinary.bounds.LayerBounds_Package is

   procedure Initialize_Fields (This : in out LayerBounds'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LayerBounds'Class; rectangle : Rectangle_Access) is
   begin
      Initialize_Fields (This);
        This.rectangle := rectangle;
   end Initialize;

   function Create (rectangle : Rectangle_Access) return LayerBounds_Access is
      This : constant LayerBounds_Access := new LayerBounds;
   begin
      Initialize (This.all, rectangle);
      return This;
   end Create;

   function getRectangleP (This : in out LayerBounds) return Rectangle_Access is
   begin
        return This.rectangle;
   end getRectangleP;

   procedure visit (This : in out LayerBounds; boundsVisitorInterface : BoundsVisitorInterface_Access) is
   begin
        null;
   end visit;

   procedure onEvent (This : in out LayerBounds; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onBoundsChangeEvent (This : in out LayerBounds; boundsChangeEvent : BoundsChangeEvent_Access) is
   begin
        This.rectangle := boundsChangeEvent.getRectangle;
   end onBoundsChangeEvent;

   procedure getRectangleP (This : in out LayerBounds) is
      Java_Result : constant Rectangle_Access := LayerBounds'Class (This).getRectangleP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRectangleP;

end org.allbinary.bounds.LayerBounds_Package;


