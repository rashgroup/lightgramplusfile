.class Lorg/telegram/ui/ThemePreviewActivity$9;
.super Ljava/lang/Object;
.source "ThemePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$9;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$9;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ThemePreviewActivity;->applied:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$1802(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$9;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    # getter for: Lorg/telegram/ui/ThemePreviewActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$1900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$9;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    # getter for: Lorg/telegram/ui/ThemePreviewActivity;->themeFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2000(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$9;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    # getter for: Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$9;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity;->finishFragment()V

    return-void
.end method
