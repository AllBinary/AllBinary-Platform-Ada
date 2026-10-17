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


package body org.allbinary.bounds.TopULayerBounds_Package is

   procedure Initialize_Fields (This : in out TopULayerBounds'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TopULayerBounds'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        LayerBounds_Package.Initialize (This, rectangle);
   end Initialize;

   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return TopULayerBounds_Access is
      This : constant TopULayerBounds_Access := new TopULayerBounds;
   begin
      TopULayerBounds_Package.Initialize (This.all, rectangle_Param);
      return This;
   end Create;

   procedure visit (This : in out TopULayerBounds; boundsVisitorInterface_Param : access BoundsVisitorInterface_Package.BoundsVisitorInterface'Class) is
      boundsVisitorInterface : constant BoundsVisitorInterface_Access := BoundsVisitorInterface_Access (boundsVisitorInterface_Param);
   begin
        if (boundsVisitorInterface.getX) > (This.rectangle.getMaxX) then
            boundsVisitorInterface.maxX;
        end if;
        if (boundsVisitorInterface.getX) < (This.rectangle.getPoint.getX) then
            boundsVisitorInterface.minX;
        end if;
        if (boundsVisitorInterface.getY) < (This.rectangle.getPoint.getY) then
            boundsVisitorInterface.minY;
        end if;
   end visit;

end org.allbinary.bounds.TopULayerBounds_Package;


