.class Lorg/telegram/ui/tools/d/a$c;
.super Ljava/lang/Object;
.source "AddRemmber.java"

# interfaces
.implements Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;II)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v0, p2}, Lorg/telegram/ui/tools/d/a;->a(Lorg/telegram/ui/tools/d/a;I)I

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v0, p3}, Lorg/telegram/ui/tools/d/a;->b(Lorg/telegram/ui/tools/d/a;I)I

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "HOUR_OF_DAY"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "MINUTE"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v0, 0xa

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/d/a;->a(Lorg/telegram/ui/tools/d/a;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/a;->e(Lorg/telegram/ui/tools/d/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/a;->d(Lorg/telegram/ui/tools/d/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$c;->a:Lorg/telegram/ui/tools/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/d/a;->a(Lorg/telegram/ui/tools/d/a;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
