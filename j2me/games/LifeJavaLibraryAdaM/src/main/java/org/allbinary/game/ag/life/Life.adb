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
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end createLife;

   procedure Initialize (This : in out Life'Class; lives : Short_Integer; maxlives : Short_Integer) is
   begin
      Initialize_Fields (This);
        This.maxlives := maxlives;
        if (Integer (lives)) > (Integer (This.maxlives)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("To Many Lives")));
        end if;
        This.lives := lives;
        This.startLives := lives;
   end Initialize;

   function Create (lives : Short_Integer; maxlives : Short_Integer) return Life_Access is
      This : constant Life_Access := new Life;
   begin
      Life_Package.Initialize (This.all, lives, maxlives);
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
        if not (Life'Class (This).reachedLimit) then
            if ((Integer (This.lives)) + (Integer (lives))) <= (Integer (Life'Class (This).getMaxlives)) then
                This.lives := Short_Integer (((Integer (This.lives)) + (Integer (lives))));
            else
                This.lives := Life'Class (This).getMaxlives;
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
        if ((Integer (This.lives)) > (Integer (This.maxlives))) or else ((Integer (This.lives)) < (0)) then
            return True;
        else
            return False;
        end if;
   end reachedLimit;

   procedure deaths (This : in out Life; lives : Short_Integer) is
   begin
        if not (Life'Class (This).reachedLimit) then
            if ((Integer (This.lives)) - (Integer (lives))) >= (0) then
                This.lives := Short_Integer (((Integer (This.lives)) - (Integer (lives))));
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

begin
   null;
   NO_LIFE := Life_Package.createLife;

end org.allbinary.game.ag.life.Life_Package;


