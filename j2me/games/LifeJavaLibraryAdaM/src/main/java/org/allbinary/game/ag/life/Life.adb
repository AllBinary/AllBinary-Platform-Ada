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


package body org.allbinary.game.ag.life.Life_Package is

   procedure Initialize_Fields (This : in out Life'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   function createLife return Life_Access is
   begin
        begin
            return Life_Package.Create (Short_Integer (0), Short_Integer (0));
        exception
            when e : others =>
            Java_Throw (Java_New_Exception ("RuntimeException"));
        end;
   end createLife;

   procedure Initialize (This : in out Life'Class; lives : Short_Integer; maxlives : Short_Integer) is
   begin
      Initialize_Fields (This);
        This.maxlives := maxlives;
        if (lives) > (This.maxlives) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("To Many Lives")));
        end if;
        This.lives := lives;
        This.startLives := lives;
   end Initialize;

   function Create (lives : Short_Integer; maxlives : Short_Integer) return Life_Access is
      This : constant Life_Access := new Life;
   begin
      Initialize (This.all, lives, maxlives);
      return This;
   end Create;

   function get (This : in out Life) return Short_Integer is
   begin
        return This.lives;
   end get;

   procedure set (This : in out Life; lives : Short_Integer) is
   begin
        This.lives := lives;
   end set;

   procedure reset (This : in out Life) is
   begin
        This.lives := This.startLives;
   end reset;

   procedure add (This : in out Life; lives : Short_Integer) is
   begin
        if not (This.reachedLimit) then
            if ((This.lives) + (lives)) <= (Integer (This.getMaxlives)) then
                This.lives := Short_Integer (((This.lives) + (lives)));
            else
                This.lives := This.getMaxlives;
            end if;
        end if;
   end add;

   function isAlive (This : in out Life) return Boolean is
   begin
        if (Integer (This.lives)) <= (0) then
            return False;
        else
            return True;
        end if;
   end isAlive;

   function getMaxlives (This : in out Life) return Short_Integer is
   begin
        return This.maxlives;
   end getMaxlives;

   function reachedLimit (This : in out Life) return Boolean is
   begin
        if ((This.lives) > (This.maxlives)) or else ((Integer (This.lives)) < (0)) then
            return True;
        else
            return False;
        end if;
   end reachedLimit;

   procedure deaths (This : in out Life; lives : Short_Integer) is
   begin
        if not (This.reachedLimit) then
            if ((This.lives) - (lives)) >= (0) then
                This.lives := Short_Integer (((This.lives) - (lives)));
            else
                This.lives := 0;
            end if;
        end if;
   end deaths;

   function getStartLives (This : in out Life) return Short_Integer is
   begin
        return This.startLives;
   end getStartLives;

   procedure setStartLives (This : in out Life; startLives : Short_Integer) is
   begin
        This.startLives := startLives;
   end setStartLives;

   procedure createLife is
      Java_Result : constant Life_Access := createLife;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createLife;

   procedure get (This : in out Life) is
      Java_Result : constant Short_Integer := Life'Class (This).get;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure isAlive (This : in out Life) is
      Java_Result : constant Boolean := Life'Class (This).isAlive;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAlive;

   procedure getMaxlives (This : in out Life) is
      Java_Result : constant Short_Integer := Life'Class (This).getMaxlives;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxlives;

   procedure reachedLimit (This : in out Life) is
      Java_Result : constant Boolean := Life'Class (This).reachedLimit;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end reachedLimit;

   procedure getStartLives (This : in out Life) is
      Java_Result : constant Short_Integer := Life'Class (This).getStartLives;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStartLives;

begin
   null;
   NO_LIFE := Life_Package.createLife;

end org.allbinary.game.ag.life.Life_Package;


