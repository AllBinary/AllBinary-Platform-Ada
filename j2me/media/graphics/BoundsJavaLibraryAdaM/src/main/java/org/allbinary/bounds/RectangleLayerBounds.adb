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


with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.bounds.BoundsVisitorInterface_Package; use org.allbinary.bounds.BoundsVisitorInterface_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package_References;
with org.allbinary.bounds.event.BoundsChangeEvent_Package;
with org.allbinary.bounds.event.BoundsChangeEventListener_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package;

package body org.allbinary.bounds.RectangleLayerBounds_Package is

   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype BoundsVisitorInterface_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   procedure Initialize_Fields (This : in out RectangleLayerBounds'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleLayerBounds'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        LayerBounds_Package.Initialize (This, rectangle);
   end Initialize;

   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return RectangleLayerBounds_Access is
      This : constant RectangleLayerBounds_Access := new RectangleLayerBounds;
   begin
      RectangleLayerBounds_Package.Initialize (This.all, rectangle_Param);
      return This;
   end Create;

   procedure visit (This : in out RectangleLayerBounds; boundsVisitorInterface_Param : access BoundsVisitorInterface_Package.BoundsVisitorInterface'Class) is
      boundsVisitorInterface : constant BoundsVisitorInterface_Access := BoundsVisitorInterface_Access (boundsVisitorInterface_Param);
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


