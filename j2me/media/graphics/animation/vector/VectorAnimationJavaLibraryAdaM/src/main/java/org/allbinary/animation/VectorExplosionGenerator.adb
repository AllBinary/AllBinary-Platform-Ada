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


package body org.allbinary.animation.VectorExplosionGenerator_Package is

   procedure Initialize_Fields (This : in out VectorExplosionGenerator'Class) is
   begin
      null;
      This.RANDOM := VectorExplosionType_Package.Create;
      This.ROTATION := VectorExplosionType_Package.Create;
      This.vectorAnimationUtil := VectorAnimationUtil_Package.getInstance;
      This.randomRotationFactory := RandomRotationFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return VectorExplosionGenerator_Access is
   begin
        return VectorExplosionGenerator_Package.instance;
   end getInstance;

   procedure Initialize (This : in out VectorExplosionGenerator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return VectorExplosionGenerator_Access is
      This : constant VectorExplosionGenerator_Access := new VectorExplosionGenerator;
   begin
      VectorExplosionGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createList (This : in out VectorExplosionGenerator; list_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) return BasicArrayList_Access is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      type_Id : constant VectorExplosionType_Access := VectorExplosionType_Access (type_Id_Param);
      point : GPoint_Access;
      size : Integer;
      points : Integer_Array_Access_Array_Access;
      index : Integer;
   begin
        point := null;
        size := list.size;
        points := new Integer_Array_Access_Array'(0 .. (size) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
        for index in 0 .. (size) - 1 loop
            point := GPoint_Access (list.objectArray (index));
            points (index) (0) := point.getX;
            points (index) (1) := point.getY;
        end loop;
        return VectorExplosionGenerator'Class (This).createListFromPoints (list, points, howMuch, type_Id);
   end createList;

   --  throws Exception
   function getInstance (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) return Integer_Array_Access_Array_Access_Array_Access is
      type_Id : constant VectorExplosionType_Access := VectorExplosionType_Access (type_Id_Param);
      pointsBasicArrayList : BasicArrayList_Access;
      tempBasicArrayList : BasicArrayList_Access;
      newPoints : Integer_Array_Access_Array_Access_Array_Access;
   begin
        pointsBasicArrayList := VectorExplosionGenerator'Class (This).getInstanceStartFrame (points, howMuch, type_Id, True);
        tempBasicArrayList := BasicArrayList_Access (pointsBasicArrayList.objectArray (0));
        newPoints := This.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame (pointsBasicArrayList, tempBasicArrayList.size);
        return newPoints;
   end getInstance;

   --  throws Exception
   function getInstanceStartFrame (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class; startFrame : Boolean) return BasicArrayList_Access is
      type_Id : constant VectorExplosionType_Access := VectorExplosionType_Access (type_Id_Param);
      pointsBasicArrayList : BasicArrayList_Access;
      frameIndex : Integer;
      tempBasicArrayList : BasicArrayList_Access;
      pointBasicArrayList : BasicArrayList_Access;
   begin
        begin
            pointsBasicArrayList := BasicArrayListS_Package.Create (howMuch);
            pointsBasicArrayList.add (VectorExplosionGenerator'Class (This).createPointsBasicArrayList (points));
            frameIndex := 0;
            tempBasicArrayList := null;
            pointBasicArrayList := null;
            while (frameIndex) < (howMuch) loop
                tempBasicArrayList := BasicArrayList_Access (pointsBasicArrayList.objectArray (frameIndex));
                pointBasicArrayList := VectorExplosionGenerator'Class (This).createListFromPoints (tempBasicArrayList, points, howMuch, type_Id);
                pointsBasicArrayList.add (pointBasicArrayList);
                frameIndex := frameIndex + 1;
            end loop;
            if not (startFrame) then
                pointsBasicArrayList.removeAt (0);
            end if;
            return pointsBasicArrayList;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getInstanceStartFrame;

   --  throws Exception
   function createListFromPoints (This : in out VectorExplosionGenerator; tempBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) return BasicArrayList_Access is
      tempBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (tempBasicArrayList_Param);
      type_Id : constant VectorExplosionType_Access := VectorExplosionType_Access (type_Id_Param);
      index : Integer;
      pointBasicArrayList : BasicArrayList_Access;
      sectionBasicArrayList : BasicArrayList_Access;
      size : Integer;
      index2 : Integer;
   begin
        index := 0;
        pointBasicArrayList := BasicArrayListD_Package.Create;
        sectionBasicArrayList := null;
        while (index) < (points'Length) loop
            sectionBasicArrayList := BasicArrayListD_Package.Create;
            while (points (index) (0)) /= (1000) loop
                sectionBasicArrayList.add (tempBasicArrayList.objectArray (index));
                index := index + 1;
                if (index) >= (points'Length) then
                    exit;
                end if;
            end loop;
            sectionBasicArrayList := RandomTranslation_Package.getInstance (sectionBasicArrayList, howMuch);
            if (type_Id) = (This.ROTATION) then
                sectionBasicArrayList := This.randomRotationFactory.getInstanceList (sectionBasicArrayList, howMuch);
            end if;
            size := sectionBasicArrayList.size;
            for index2 in 0 .. (size) - 1 loop
                pointBasicArrayList.add (sectionBasicArrayList.objectArray (index2));
            end loop;
            if (index) >= (points'Length) then
                exit;
            elsif (points (index) (0)) = (1000) then
                pointBasicArrayList.add (tempBasicArrayList.objectArray (index));
                index := index + 1;
            end if;
        end loop;
        return pointBasicArrayList;
   end createListFromPoints;

   --  throws Exception
   function createPointsBasicArrayList (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access) return BasicArrayList_Access is
      firstPointBasicArrayList : BasicArrayList_Access;
      pointFactory : PointFactory_Access;
      index : Integer;
   begin
        if (points'Length) = (0) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Points Provided")));
        end if;
        firstPointBasicArrayList := BasicArrayListS_Package.Create (points'Length);
        pointFactory := PointFactory_Package.getInstance;
        for index in 0 .. (points'Length) - 1 loop
            firstPointBasicArrayList.add (pointFactory.createXY (points (index) (0), points (index) (1)));
        end loop;
        return firstPointBasicArrayList;
   end createPointsBasicArrayList;

   procedure createList (This : in out VectorExplosionGenerator; list_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) is
      Java_Result : constant BasicArrayList_Access := VectorExplosionGenerator'Class (This).createList (list_Param, howMuch, type_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createList;

   procedure getInstance (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := VectorExplosionGenerator'Class (This).getInstance (points, howMuch, type_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceStartFrame (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class; startFrame : Boolean) is
      Java_Result : constant BasicArrayList_Access := VectorExplosionGenerator'Class (This).getInstanceStartFrame (points, howMuch, type_Id_Param, startFrame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceStartFrame;

   procedure createListFromPoints (This : in out VectorExplosionGenerator; tempBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) is
      Java_Result : constant BasicArrayList_Access := VectorExplosionGenerator'Class (This).createListFromPoints (tempBasicArrayList_Param, points, howMuch, type_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createListFromPoints;

   procedure createPointsBasicArrayList (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access) is
      Java_Result : constant BasicArrayList_Access := VectorExplosionGenerator'Class (This).createPointsBasicArrayList (points);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPointsBasicArrayList;

begin
   null;
   instance := VectorExplosionGenerator_Package.Create;

end org.allbinary.animation.VectorExplosionGenerator_Package;


