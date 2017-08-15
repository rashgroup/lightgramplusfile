.class public Lorg/telegram/PhoneFormat/RuleSet;
.super Ljava/lang/Object;
.source "RuleSet.java"


# static fields
.field public static pattern:Ljava/util/regex/Pattern;


# instance fields
.field public hasRuleWithIntlPrefix:Z

.field public hasRuleWithTrunkPrefix:Z

.field public matchLen:I

.field public rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/PhoneFormat/PhoneRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/PhoneFormat/RuleSet;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    if-lt v1, v3, :cond_f

    iget v1, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/telegram/PhoneFormat/RuleSet;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v1, v4, :cond_0

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v1, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v4, v5, :cond_0

    if-eqz p4, :cond_4

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_1

    if-nez p3, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    :cond_2
    if-eqz p2, :cond_0

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    if-nez p3, :cond_5

    if-eqz p2, :cond_7

    :cond_5
    if-eqz p3, :cond_6

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_7

    :cond_6
    if-eqz p2, :cond_0

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    :cond_7
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    if-nez p4, :cond_e

    if-eqz p2, :cond_b

    iget-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v1, v4, :cond_9

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v1, v4, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v4, v5, :cond_9

    if-eqz p3, :cond_a

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    :cond_a
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    if-eqz p3, :cond_e

    iget-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v1, v4, :cond_c

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v1, v4, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v4, v5, :cond_c

    if-eqz p2, :cond_d

    iget v4, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_c

    :cond_d
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_e
    move-object v0, v2

    goto :goto_1

    :cond_f
    move-object v0, v2

    goto/16 :goto_1

    :cond_10
    move v1, v0

    goto/16 :goto_0
.end method

.method isValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/PhoneFormat/RuleSet;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v1, v5, :cond_0

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v1, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-ne v5, v6, :cond_0

    if-eqz p4, :cond_5

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_1

    if-nez p3, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    :cond_2
    if-eqz p2, :cond_0

    iget v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    return v2

    :cond_5
    if-nez p3, :cond_6

    if-eqz p2, :cond_8

    :cond_6
    if-eqz p3, :cond_7

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_8

    :cond_7
    if-eqz p2, :cond_0

    iget v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_8
    move v2, v3

    goto :goto_1

    :cond_9
    if-nez p4, :cond_4

    if-eqz p2, :cond_c

    iget-boolean v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->hasRuleWithIntlPrefix:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v1, v5, :cond_a

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v1, v5, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-ne v5, v6, :cond_a

    if-eqz p3, :cond_b

    iget v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    :cond_b
    move v2, v3

    goto :goto_1

    :cond_c
    if-eqz p3, :cond_4

    iget-boolean v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->hasRuleWithTrunkPrefix:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v1, v5, :cond_d

    iget v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v1, v5, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, v0, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-ne v5, v6, :cond_d

    if-eqz p2, :cond_e

    iget v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    :cond_e
    move v2, v3

    goto :goto_1

    :cond_f
    move v1, v2

    goto/16 :goto_0
.end method
