.class Lorg/telegram/ui/tools/c$a;
.super Ljava/lang/Object;
.source "CacheCleaner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/c$a;->a:Lorg/telegram/ui/tools/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/tools/c$a;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;)[Z

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/tools/c$a;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    iget-object v0, p0, Lorg/telegram/ui/tools/c$a;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
