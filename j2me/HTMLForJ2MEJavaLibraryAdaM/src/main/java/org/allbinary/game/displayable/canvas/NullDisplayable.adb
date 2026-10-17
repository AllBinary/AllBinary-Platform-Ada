--  Generated Code Do Not Modify


package body org.allbinary.game.displayable.canvas.NullDisplayable_Package is

   procedure Initialize_Fields (This : in out NullDisplayable'Class) is
   begin
      null;
      This.baseGameStatistics := GameStatisticsFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return NullDisplayable_Access is
   begin
        return NullDisplayable_Package.SINGLETON;
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

   procedure paint (This : in out NullDisplayable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.baseGameStatistics.nextRefresh;
   end paint;

begin
   null;
   SINGLETON := NullDisplayable_Package.Create;

end org.allbinary.game.displayable.canvas.NullDisplayable_Package;


