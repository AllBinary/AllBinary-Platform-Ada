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


package body org.allbinary.bounds.RectangleLayerBounds_Package is

   procedure Initialize_Fields (This : in out RectangleLayerBounds'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleLayerBounds'Class; rectangle : Rectangle_Access) is
   begin
        LayerBounds_Package.Initialize (This, rectangle);
   end Initialize;

   function Create (rectangle : Rectangle_Access) return RectangleLayerBounds_Access is
      This : constant RectangleLayerBounds_Access := new RectangleLayerBounds;
   begin
      RectangleLayerBounds_Package.Initialize (This.all, rectangle);
      return This;
   end Create;

   procedure visit (This : in out RectangleLayerBounds; boundsVisitorInterface : BoundsVisitorInterface_Access) is
   begin
        if (boundsVisitorInterface.getX) > (This.rectangle.getMaxX) then
            boundsVisitorInterface.maxX;
        end if;
        if (boundsVisitorInterface.getY) > (This.rectangle.getMaxY) then
            boundsVisitorInterface.maxY;
        end if;
        if (boundsVisitorInterface.getX) < (This.rectangle.getPoint.getX) then
            boundsVisitorInterface.minX;
        end if;
        if (boundsVisitorInterface.getY) < (This.rectangle.getPoint.getY) then
            boundsVisitorInterface.minY;
        end if;
   end visit;

end org.allbinary.bounds.RectangleLayerBounds_Package;


