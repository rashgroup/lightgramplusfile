.class public Lorg/telegram/ui/tools/d/b/b/a;
.super Ljava/lang/Object;
.source "Date.java"


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:Landroid/widget/TextView;

.field static e:Landroid/widget/TextView;

.field static f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/tools/d/b/b/a;->d:Landroid/widget/TextView;

    sput-object v0, Lorg/telegram/ui/tools/d/b/b/a;->e:Landroid/widget/TextView;

    sput-object v0, Lorg/telegram/ui/tools/d/b/b/a;->f:Landroid/widget/TextView;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lorg/telegram/ui/tools/d/b/b/a;->a:I

    return v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lorg/telegram/ui/tools/d/b/b/a;->a:I

    return-void
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 0

    sput-object p0, Lorg/telegram/ui/tools/d/b/b/a;->e:Landroid/widget/TextView;

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lorg/telegram/ui/tools/d/b/b/a;->b:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lorg/telegram/ui/tools/d/b/b/a;->b:I

    return-void
.end method

.method public static b(Landroid/widget/TextView;)V
    .locals 0

    sput-object p0, Lorg/telegram/ui/tools/d/b/b/a;->d:Landroid/widget/TextView;

    return-void
.end method

.method public static c()I
    .locals 1

    sget v0, Lorg/telegram/ui/tools/d/b/b/a;->c:I

    return v0
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lorg/telegram/ui/tools/d/b/b/a;->c:I

    return-void
.end method

.method public static c(Landroid/widget/TextView;)V
    .locals 0

    sput-object p0, Lorg/telegram/ui/tools/d/b/b/a;->f:Landroid/widget/TextView;

    return-void
.end method

.method public static d()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/d/b/b/a;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public static e()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/d/b/b/a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static f()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/d/b/b/a;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public static g()V
    .locals 4

    sget v0, Lorg/telegram/ui/tools/d/b/b/a;->c:I

    sget v1, Lorg/telegram/ui/tools/d/b/b/a;->b:I

    sget v2, Lorg/telegram/ui/tools/d/b/b/a;->a:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/tools/d/b/a;->b(III)V

    :try_start_0
    sget-object v0, Lorg/telegram/ui/tools/d/b/a/c;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/telegram/ui/tools/d/b/b/b;->b:[Ljava/lang/String;

    sget v3, Lorg/telegram/ui/tools/d/b/b/a;->b:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/ui/tools/d/b/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setDate(IIIZ)V
    .locals 0

    sput p0, Lorg/telegram/ui/tools/d/b/b/a;->c:I

    sput p1, Lorg/telegram/ui/tools/d/b/b/a;->b:I

    sput p2, Lorg/telegram/ui/tools/d/b/b/a;->a:I

    if-eqz p3, :cond_0

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->g()V

    :cond_0
    return-void
.end method
