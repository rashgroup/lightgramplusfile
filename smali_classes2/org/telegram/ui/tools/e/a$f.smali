.class Lorg/telegram/ui/tools/e/a$f;
.super Ljava/lang/Object;
.source "PPPP.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final a:Landroid/widget/SeekBar;

.field final synthetic b:Lorg/telegram/ui/tools/e/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/e/a;Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a$f;->b:Lorg/telegram/ui/tools/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/tools/e/a$f;->a:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$f;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0, p2}, Lorg/telegram/ui/tools/e/a;->c(Lorg/telegram/ui/tools/e/a;I)I

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$f;->b:Lorg/telegram/ui/tools/e/a;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$f;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/e/a;->p(Lorg/telegram/ui/tools/e/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/e/a;->c(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$f;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$f;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/e/a;->p(Lorg/telegram/ui/tools/e/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$f;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->q(Lorg/telegram/ui/tools/e/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
