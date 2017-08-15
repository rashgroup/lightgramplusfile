.class Lorg/telegram/ui/WallpapersActivity$1;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/4 v1, -0x1

    # setter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v0, v1}, Lorg/telegram/ui/WallpapersActivity;->access$002(Lorg/telegram/ui/WallpapersActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/WallpapersActivity;->access$102(Lorg/telegram/ui/WallpapersActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/WallpapersActivity;->selectedColor:I
    invoke-static {v0, v1}, Lorg/telegram/ui/WallpapersActivity;->access$202(Lorg/telegram/ui/WallpapersActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # setter for: Lorg/telegram/ui/WallpapersActivity;->wallpaperFile:Ljava/io/File;
    invoke-static {v0, p1}, Lorg/telegram/ui/WallpapersActivity;->access$302(Lorg/telegram/ui/WallpapersActivity;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public needOpenColorPicker()V
    .locals 0

    return-void
.end method
