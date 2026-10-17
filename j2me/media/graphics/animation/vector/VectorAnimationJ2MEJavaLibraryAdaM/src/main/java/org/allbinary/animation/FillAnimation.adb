--  Generated Code Do Not Modify


package body org.allbinary.animation.FillAnimation_Package is

   procedure Initialize_Fields (This : in out FillAnimation'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out FillAnimation'Class; pixelBuffer : Integer_Array_Access; width : Integer; height : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.width := 100;
        This.height := 100;
        This.pixelBuffer := pixelBuffer;
   end Initialize;

   function Create (pixelBuffer : Integer_Array_Access; width : Integer; height : Integer; animationBehavior : AnimationBehavior_Access) return FillAnimation_Access is
      This : constant FillAnimation_Access := new FillAnimation;
   begin
      Initialize (This.all, pixelBuffer, width, height, animationBehavior);
      return This;
   end Create;

   procedure setBasicColorP (This : in out FillAnimation; basicColor : BasicColor_Access) is
      changed : Boolean;
   begin
        changed := False;
        if ((This.getBasicColorP) = (null)) or else ((This.getBasicColorP.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        IndexedAnimation (This).setBasicColorP (basicColor);
        if changed then
            This.updateModifiers;
        end if;
   end setBasicColorP;

   procedure changeBasicColor (This : in out FillAnimation; basicColor : BasicColor_Access) is
      changed : Boolean;
   begin
        changed := False;
        if ((This.getChangeBasicColor) = (null)) or else ((This.getChangeBasicColor.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        IndexedAnimation (This).changeBasicColor (basicColor);
        if changed then
            This.updateModifiers;
        end if;
   end changeBasicColor;

   procedure setAlpha (This : in out FillAnimation; alpha : Integer) is
      changed : Boolean;
   begin
        changed := False;
        if (This.alphaP) /= (alpha) then
            changed := True;
        end if;
        IndexedAnimation (This).setAlpha (alpha);
        if changed then
            This.updateModifiers;
        end if;
   end setAlpha;

   procedure setScale (This : in out FillAnimation; scaleX : Float; scaleY : Float) is
   begin
        null;
   end setScale;

   procedure setMaxScale (This : in out FillAnimation; maxScaleX : Float; maxScaleY : Float) is
   begin
        null;
   end setMaxScale;

   procedure updateModifiers (This : in out FillAnimation) is
   begin
        null;
   end updateModifiers;

   procedure paint (This : in out FillAnimation; g : Graphics_Access) is
   begin
        g.drawRGB (This.pixelBuffer, 0, This.width, 0, 0, This.width, This.height, True);
   end paint;

end org.allbinary.animation.FillAnimation_Package;


