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


package body org.allbinary.bounds.event.BoundsChangeEvent_Package is

   procedure Initialize_Fields (This : in out BoundsChangeEvent'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BoundsChangeEvent'Class; rectangle : Rectangle_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, rectangle);
   end Initialize;

   function Create (rectangle : Rectangle_Access) return BoundsChangeEvent_Access is
      This : constant BoundsChangeEvent_Access := new BoundsChangeEvent;
   begin
      Initialize (This.all, rectangle);
      return This;
   end Create;

   function getRectangle (This : in out BoundsChangeEvent) return Rectangle_Access is
   begin
        return Rectangle_Access (This.getSource);
   end getRectangle;

   procedure getRectangle (This : in out BoundsChangeEvent) is
      Java_Result : constant Rectangle_Access := BoundsChangeEvent'Class (This).getRectangle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRectangle;

end org.allbinary.bounds.event.BoundsChangeEvent_Package;


