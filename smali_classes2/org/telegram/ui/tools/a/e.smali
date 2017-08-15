.class public Lorg/telegram/ui/tools/a/e;
.super Ljava/lang/Object;
.source "ThemeChanger.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/tools/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lorg/telegram/ui/tools/b/c;

.field private static d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/tools/a/e;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lorg/telegram/ui/tools/b/c;
    .locals 2

    sget-object v0, Lorg/telegram/ui/tools/a/e;->c:Lorg/telegram/ui/tools/b/c;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/ui/tools/a/e;->b()Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b/c;

    sput-object v0, Lorg/telegram/ui/tools/a/e;->c:Lorg/telegram/ui/tools/b/c;

    :cond_1
    sget-object v0, Lorg/telegram/ui/tools/a/e;->c:Lorg/telegram/ui/tools/b/c;

    return-object v0
.end method

.method public static a(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    sput-object p0, Lorg/telegram/ui/tools/a/e;->d:Landroid/view/View;

    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/tools/b/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/4 v1, 0x0

    const-string/jumbo v2, "Blue"

    const-string/jumbo v3, "#0C867B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#0C867B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/4 v1, 0x1

    const-string/jumbo v2, "HotBlue"

    const-string/jumbo v3, "#0C867B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#0C867B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/4 v1, 0x2

    const-string/jumbo v2, "cyan"

    const-string/jumbo v3, "#00BCD4"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#00BCD4"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/4 v1, 0x3

    const-string/jumbo v2, "Hotgreen"

    const-string/jumbo v3, "#0C867B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#0C867B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/4 v1, 0x4

    const-string/jumbo v2, "green"

    const-string/jumbo v3, "#9CCC65"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#9CCC65"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/4 v1, 0x5

    const-string/jumbo v2, "lightgreen"

    const-string/jumbo v3, "#8BC34A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#8BC34A"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/4 v1, 0x6

    const-string/jumbo v2, "bluegreen"

    const-string/jumbo v3, "#10AA9C"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#10AA9C"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/4 v1, 0x7

    const-string/jumbo v2, "lemun"

    const-string/jumbo v3, "#FFF568"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#FFF568"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "grey"

    const-string/jumbo v7, "blue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0x8

    const-string/jumbo v2, "ping"

    const-string/jumbo v3, "#EC407A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#EC407A"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0x9

    const-string/jumbo v2, "Red"

    const-string/jumbo v3, "#F44336"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#F44336"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0xa

    const-string/jumbo v2, "LightRed"

    const-string/jumbo v3, "#E57373"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#E57373"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0xb

    const-string/jumbo v2, "purple"

    const-string/jumbo v3, "#AB47BC"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#AB47BC"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0xc

    const-string/jumbo v2, "Brown"

    const-string/jumbo v3, "#795548"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#795548"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0xd

    const-string/jumbo v2, "Dark"

    const-string/jumbo v3, "#3C3F41"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#3C3F41"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0xe

    const-string/jumbo v2, "black"

    const-string/jumbo v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0xf

    const-string/jumbo v2, "bluegreen"

    const-string/jumbo v3, "#005926"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#005926"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0x10

    const-string/jumbo v2, "pinkred"

    const-string/jumbo v3, "#ED145B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#ED145B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0x11

    const-string/jumbo v2, "orangered"

    const-string/jumbo v3, "#F8941D"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#F8941D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0x12

    const-string/jumbo v2, "bluegreen"

    const-string/jumbo v3, "#00BCD4"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#00BCD4"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/tools/b/c;

    const/16 v1, 0x13

    const-string/jumbo v2, "hotbluegreen"

    const-string/jumbo v3, "#de0034"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#de0034"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b/c;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/tools/a/e;->b:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public static c()Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method
