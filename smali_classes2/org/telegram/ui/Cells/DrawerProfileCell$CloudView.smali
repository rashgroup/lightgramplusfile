.class Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;
.super Landroid/view/View;
.source "DrawerProfileCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/DrawerProfileCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/DrawerProfileCell;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x42040000    # 33.0f

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const-string/jumbo v0, "chats_menuCloud"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    # getter for: Lorg/telegram/ui/Cells/DrawerProfileCell;->lastCloudColor:I
    invoke-static {v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$000(Lorg/telegram/ui/Cells/DrawerProfileCell;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    # getter for: Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    const-string/jumbo v3, "chats_menuCloud"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    # setter for: Lorg/telegram/ui/Cells/DrawerProfileCell;->lastCloudColor:I
    invoke-static {v2, v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$002(Lorg/telegram/ui/Cells/DrawerProfileCell;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    # getter for: Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    # getter for: Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "chats_menuCloudBackgroundCats"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method
