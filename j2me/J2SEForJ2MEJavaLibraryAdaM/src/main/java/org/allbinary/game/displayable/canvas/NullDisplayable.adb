--  Generated Code Do Not Modify


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.canvas.BaseGameStatistics_Package; use org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.canvas.BaseGameStatistics_Package_References;
with org.allbinary.canvas.GameStatisticsFactory_Package; use org.allbinary.canvas.GameStatisticsFactory_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeDelayHelper_Package;

package body org.allbinary.game.displayable.canvas.NullDisplayable_Package is

   package GameStatisticsFactory_Package renames Standard.org.allbinary.canvas.GameStatisticsFactory_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype BaseGameStatistics_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access;
   function "=" (Left, Right : BaseGameStatistics_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array;
   function "=" (Left, Right : BaseGameStatistics_Access_Array) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array_Access_Array is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array_Access_Array_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   procedure Initialize_Fields (This : in out NullDisplayable'Class) is
   begin
      null;
      This.baseGameStatistics := BaseGameStatistics_Access (GameStatisticsFactory_Package.getInstance);
   end Initialize_Fields;


   function getInstance return NullDisplayable_Access is
   begin
        return NullDisplayable_Access (NullDisplayable_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out NullDisplayable'Class) is
   begin
      Canvas_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullDisplayable_Access is
      This : constant NullDisplayable_Access := new NullDisplayable;
   begin
      NullDisplayable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure paint (This : in out NullDisplayable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.baseGameStatistics.nextRefresh;
   end paint;

begin
   null;
   SINGLETON := NullDisplayable_Package.Create;

end org.allbinary.game.displayable.canvas.NullDisplayable_Package;


