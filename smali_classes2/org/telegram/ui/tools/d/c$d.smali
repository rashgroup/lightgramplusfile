.class Lorg/telegram/ui/tools/d/c$d;
.super Ljava/lang/Object;
.source "RVAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lorg/telegram/ui/tools/d/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/c;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/c$d;->b:Lorg/telegram/ui/tools/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/ui/tools/d/c$d;->a:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/c$d;->b:Lorg/telegram/ui/tools/d/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/c;->b(Lorg/telegram/ui/tools/d/c;)Lorg/telegram/ui/tools/d/c$e;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/tools/d/c$d;->a:I

    invoke-interface {v0, p1, p2, v1}, Lorg/telegram/ui/tools/d/c$e;->a(Landroid/widget/CompoundButton;ZI)V

    return-void
.end method
