.class public Lorg/telegram/ui/tools/c/h;
.super Ljava/lang/Object;
.source "TabSetting.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/tools/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(I)I
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b/a;->b()I

    move-result v0

    return v0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/tools/b/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/tools/b/a;

    const/4 v2, 0x0

    const v3, 0x7f0800cd

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/tools/b/a;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/tools/b/a;

    const/4 v2, 0x1

    const v3, 0x7f080678

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/tools/b/a;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/tools/b/a;

    const/4 v2, 0x2

    const v3, 0x7f0806f5

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/tools/b/a;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/tools/b/a;

    const/4 v2, 0x3

    const v3, 0x7f080185

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/tools/b/a;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/tools/b/a;

    const/4 v2, 0x4

    const v3, 0x7f0806cd

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/tools/b/a;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/tools/b/a;

    const/4 v2, 0x5

    const v3, 0x7f08063c

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/tools/b/a;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/tools/b/a;

    const/4 v2, 0x6

    const v3, 0x7f08080d

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/tools/b/a;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static a(Landroid/support/design/widget/TabLayout;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/TabLayout;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/telegram/ui/tools/c/h;->a()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b/a;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static b(I)I
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/c/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b/a;->a()I

    move-result v0

    return v0
.end method
