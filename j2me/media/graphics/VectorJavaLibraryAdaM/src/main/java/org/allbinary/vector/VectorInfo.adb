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


package body org.allbinary.vector.VectorInfo_Package is

   procedure Initialize_Fields (This : in out VectorInfo'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out VectorInfo'Class; width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; totalFrames : Integer) is
   begin
      Initialize_Fields (This);
        This.width := width;
        This.height := height;
        This.points := points;
        This.totalFrames := totalFrames;
   end Initialize;

   function Create (width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; totalFrames : Integer) return VectorInfo_Access is
      This : constant VectorInfo_Access := new VectorInfo;
   begin
      VectorInfo_Package.Initialize (This.all, width, height, points, totalFrames);
      return This;
   end Create;

   function getWidth (This : in out VectorInfo) return Integer is
   begin
        return This.width;
   end getWidth;

   procedure setWidth (This : in out VectorInfo; width : Integer) is
   begin
        This.width := width;
   end setWidth;

   function getHeight (This : in out VectorInfo) return Integer is
   begin
        return This.height;
   end getHeight;

   procedure setHeight (This : in out VectorInfo; height : Integer) is
   begin
        This.height := height;
   end setHeight;

   function getPoints (This : in out VectorInfo) return Integer_Array_Access_Array_Access is
   begin
        return This.points;
   end getPoints;

   procedure setPoints (This : in out VectorInfo; points : Integer_Array_Access_Array_Access) is
   begin
        This.points := points;
   end setPoints;

   function getTotalFrames (This : in out VectorInfo) return Integer is
   begin
        return This.totalFrames;
   end getTotalFrames;

   procedure setTotalFrames (This : in out VectorInfo; totalFrames : Integer) is
   begin
        This.totalFrames := totalFrames;
   end setTotalFrames;

end org.allbinary.vector.VectorInfo_Package;


